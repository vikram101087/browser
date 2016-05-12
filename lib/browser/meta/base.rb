# :frozen_string_literal => true
module Browser
  module Meta
    def self.rules
      @rules ||= [
        Device,
        GenericBrowser,
        Id,
        IE,
        IOS,
        Mobile,
        Modern,
        Platform,
        Proxy,
        Safari,
        Tablet,
        Webkit
      ]
    end

    def self.get(browser)
      meta = Set.new
      rules.each do |rule|
        meta.merge(rule.new(browser).to_a)
      end
      meta.to_a
    end

    class Base
      # Set the browser instance.
      attr_reader :browser

      def initialize(browser)
        @browser = browser
      end

      def meta
        nil
      end

      def to_a
        meta.to_s.squeeze(" ").split(" ")
      end
    end
  end
end
