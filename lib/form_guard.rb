require_relative "form_guard/version"
require_relative "form_guard/view_helper"
require_relative "form_guard/controller"
require_relative "form_guard/railtie"

module FormGuard
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :min_delay, :honeypot_field_prefix, :honeypot_time_prefix

    def initialize
      @min_delay = 2
      @honeypot_field_prefix = "field_"
      @honeypot_time_prefix = "ts_"
    end
  end

  FormGuard.configuration ||= FormGuard::Configuration.new
end
