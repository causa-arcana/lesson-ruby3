#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bigdecimal'

begin
  BigDecimal.new '3.141592653589793'
rescue NoMethodError
  nil
else
  raise
end
