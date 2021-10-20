# frozen_string_literal: true

module Model
  def self.included(base)
    base.extend(ClassMethods)
  end

  def initialize(attributes = {})
    @attributes = self.class.types.each_with_object({}) do |(name, (options)), result|
      value = attributes.key?(name) ? attributes[name] : options[:default]
      result[name] = self.class.convert(value, options[:type])
    end
  end

  def attributes
    @attributes
  end

  module ClassMethods
    def convert(value, type)
      return if value.nil?

      mapping = {
        string: ->(attribute) { attribute.to_s },
        integer: ->(attribute) { attribute.to_i },
        boolean: ->(attribute) { attribute != false && attribute != 'no' },
        datetime: ->(attribute) { DateTime.parse(attribute) }
      }

      mapping[type].call(value)
    end

    def types
      @types
    end

    def attribute(name, options = {})
      @types ||= {}
      @types[name] = options

      define_method name do
        @attributes[name]
      end

      define_method "#{name}=" do |value|
        @attributes[name] = self.class.convert(value, options[:type])
      end
    end
  end
end
