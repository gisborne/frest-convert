require "frest/convert/version"

module Frest
  module Convert
    @converters = {}

    def register_converter converter:, from: [], to:
        [*from].product([*to]).each do |f, t|
          @converters[f]    ||= {}
          @converters[f][t] ||= []
          @converters[f][t] << converter
        end
    end

    def convert from:, to:
      converter = @converters[from.class][to]
      converter.last.call source: from, to: to
    end

    module_function :register_converter
    module_function :convert
  end
end
