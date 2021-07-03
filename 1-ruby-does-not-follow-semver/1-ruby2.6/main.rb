#!/usr/bin/env ruby

require 'bigdecimal'

puts (BigDecimal.new('3.141592653589793').to_f - Math::PI).abs <= 1e-16
