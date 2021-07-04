#!/usr/bin/env ruby

def hash_conversion_to_kwargs(foo:, bar:)
  nil
end

hash = { foo: 123, bar: 456 }

begin
  hash_conversion_to_kwargs(hash)
rescue ArgumentError
  nil
else
  raise
end

hash_conversion_to_kwargs(**hash)


######################################################################


def kwargs_conversion_to_posargs(foo, **kwargs)
  raise unless foo == { bar: 123 } && kwargs == {}
end

begin
  kwargs_conversion_to_posargs(bar: 123)
rescue ArgumentError
  nil
else
  raise
end

kwargs_conversion_to_posargs({ bar: 123 })


######################################################################


def non_symbol_kwargs(**kwargs)
  raise unless kwargs == { 'foo' => 123 }
end

non_symbol_kwargs('foo' => 123)


######################################################################


def optional_posarg_with_non_symbol_kwargs(foo = nil, **kwargs)
  raise unless foo == nil
  raise unless kwargs == { 'bar' => 123, :car => 456 }
end

optional_posarg_with_non_symbol_kwargs('bar' => 123, car: 456)


######################################################################


def splitting_with_hash_rocket(foo = 1, bar: nil)
  nil
end

begin
  splitting_with_hash_rocket('foo' => 123, :bar => 456)
rescue ArgumentError
  nil
else
  raise
end


######################################################################


def double_splat_with_empty_hash(*args)
  raise unless args == []
end

empty_hash = {}

double_splat_with_empty_hash(**empty_hash)


######################################################################


def parsing_double_splat_with_empty_hash(*args)
  raise unless args == []
end

parsing_double_splat_with_empty_hash(**{})


######################################################################


def no_kwargs(**nil)
  nil
end

begin
  no_kwargs(a: 1)
rescue ArgumentError
  nil
else
  raise
end
