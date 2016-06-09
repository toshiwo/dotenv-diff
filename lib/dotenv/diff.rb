require "dotenv"
require "dotenv/diff/instrumenter"
require "dotenv/diff/version"

module Dotenv
  module Diff
    extend Dotenv

    module_function

    def diff(*filenames)
      filenames << '.env.example' if filenames.empty?

      load(*filenames)
    end

    def instrumenter
      @instrumenter ||= Instrumenter.new
    end
  end
end
