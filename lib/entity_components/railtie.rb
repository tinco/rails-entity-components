require 'rails/railtie'

module EntityComponents
  class Railtie < Rails::Railtie
    initializer "entity_components_initializer"do |app|
      app.config.autoload_paths += ["app/components"]
    end
  end
end


