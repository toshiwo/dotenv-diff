module Dotenv
  module Diff
    class Instrumenter
      def instrument(name, payload)
        payload[:env].each do |key, _|
          unless ENV.has_key?(key)
            output_message(key)
          end
        end
      end

      private

      def output_message(key)
        puts "[dotenv-diff] missing key: #{key}. update your dotenv file."
      end
    end
  end
end
