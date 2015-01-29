# coding: utf-8

module Ehou
  module EhouDate
    def ehou
      return @ehou if @ehou
      @ehou = EhouString.new(self.year)
    end
  end
end

Date.include(Ehou::EhouDate)
