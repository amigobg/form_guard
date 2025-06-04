require "rails/railtie"

module FormGuard
  class Railtie < Rails::Railtie
    initializer "form_guard.action_view_integration" do
      ActiveSupport.on_load(:action_view, run_once: true) do
        include FormGuard::ViewHelper if defined?(ActionView)
      end
    end

    initializer "form_guard.action_controller_integration" do
      ActiveSupport.on_load(:action_controller, run_once: true) do
        include FormGuard::Controller if defined?(ActionController)
      end
    end
  end
end