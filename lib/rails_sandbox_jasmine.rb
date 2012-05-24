require "rails_sandbox_jasmine/version"
require "rails-sandbox-assets"

module RailsSandboxJasmine
  class JasmineFilter
    def self.filter(controller)
      controller.template = 'jasmine/runner' if controller.params[:path].try :start_with?, 'jasmine'
    end
  end

  class Engine < Rails::Engine
    initializer 'sandbox_assets.jasmine' do |app|
      unless app.config.sandbox_assets.template == 'jasmine/runner'
        SandboxAssets::BaseController.prepend_before_filter JasmineFilter
      end
    end
  end
end
