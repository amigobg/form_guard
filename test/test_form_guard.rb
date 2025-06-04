# frozen_string_literal: true

require "test_helper"

class TestFormGuard < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FormGuard::VERSION
  end

  def test_it_has_default_configuration
    config = FormGuard.configuration
    assert_equal 2, config.min_delay
    assert_equal "field_", config.honeypot_field_prefix
    assert_equal "ts_", config.honeypot_time_prefix
  end

  def test_configure_changes_settings
    FormGuard.configure do |config|
      config.min_delay = 5
      config.honeypot_field_prefix = "hp_"
      config.honeypot_time_prefix = "time_"
    end

    config = FormGuard.configuration
    assert_equal 5, config.min_delay
    assert_equal "hp_", config.honeypot_field_prefix
    assert_equal "time_", config.honeypot_time_prefix
  end
end
