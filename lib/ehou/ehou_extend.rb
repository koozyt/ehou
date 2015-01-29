# coding: utf-8
require 'date'

module Ehou
  module EhouExtend
    def ehou
      return @ehou if @ehou
      @ehou = EhouString.new(self.year)
    end
  end
end

::Date.class_eval do
  include ::Ehou::EhouExtend
end
::Time.class_eval do
  include ::Ehou::EhouExtend
end
