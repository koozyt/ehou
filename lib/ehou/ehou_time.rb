# coding: utf-8

module Ehou
  module EhouTime
    def ehou
      return @ehou if @ehou
      @ehou = EhouString.new(self.year)
    end
  end
end

Time.include(Ehou::EhouTime)
