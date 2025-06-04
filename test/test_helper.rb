# frozen_string_literal: true

require "bundler/setup"
require "minitest/autorun"
require "mocha/minitest"
require "rails"
require "action_controller"
require "action_view"
require "form_guard"

class TestController < ActionController::Base
  include FormGuard::Controller
end

class TestViewContext
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Context
  include FormGuard::ViewHelper

  def root_path
    "/"
  end
end