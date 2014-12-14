require "guard/jaspec/version"
require 'jaspec'

module Guard
  class Jaspec < Guard::Plugin

    def initialize(options = {})
      @safe_options = {
        all_on_start: true
      }.merge(options)
      super
    end

    def start
      run_all if @safe_options[:all_on_start]
    end

    def run_all
      files = Guard::Watcher.match_files(self, Dir.glob('**{,/*/**}/*Spec.{js,coffee}'))
      throw_on_failed_tests do
        ::Jaspec::Runner.run_all(files.compact.uniq.map{|f| File.expand_path(f)})
      end
    end

    def run_on_modifications(paths)
      throw_on_failed_tests do
        paths.compact.uniq.each do |p|
          ::Jaspec::Runner.run(File.expand_path(p))
        end
      end
    end

    private

    def throw_on_failed_tests
      throw :task_has_failed unless yield
    end

  end
end
