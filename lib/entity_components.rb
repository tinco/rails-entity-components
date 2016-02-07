require "entity_components/version"
require 'entity_components/railtie' if defined? Rails

require 'active_support/concern'

module EntityComponents
  extend ActiveSupport::Concern

  included do
    serialize :components, Array
    serialize :values

    after_initialize :initialize_components
    before_validation :serialize_components
  end

  def initialize_components
    components.each do |c|
      variable_name = "@#{c}".to_sym
      klass = c.camelize.constantize
      values = attributes["values"]
      name = c.to_sym

      define_singleton_method name do
        instance_variable_get(variable_name) || instance_variable_set(variable_name, klass.new(values[name]))
      end
    end
  end

  def serialize_components
    components.each do |c|
      name = c.to_sym
      values[name] = send(name).to_h
    end
  end
end
