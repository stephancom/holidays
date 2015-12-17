require File.expand_path(File.dirname(__FILE__)) + '/../../../test_helper'

require 'holidays/definition/parser/custom_method'
require 'holidays/definition/entity/custom_method'

class ParserCustomMethodTests < Test::Unit::TestCase
  def setup
    @parser = Holidays::Definition::Parser::CustomMethod.new
  end

  def test_parse_happy
    input = {"custom_method"=>{"arguments"=>"year", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    result = @parser.call(input)

    assert_equal(1, result.size)
    assert(result[:custom_method])

    assert(result[:custom_method].is_a?(Holidays::Definition::Entity::CustomMethod))
    assert_equal("custom_method", result[:custom_method].name)
    assert_equal(["year"], result[:custom_method].arguments)
    assert_equal("d = Date.civil(year, 1, 1)\nd + 2\n", result[:custom_method].source)
  end

  def test_call_happy_multiple_arguments
    input = {"custom_method"=>{"arguments"=>"year, month", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    result = @parser.call(input)
    assert_equal(["year", "month"], result[:custom_method].arguments)
  end

  def test_call_happy_multiple_arguments_with_whitespace
    input = {"custom_method"=>{"arguments"=>"year    ,     month", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    result = @parser.call(input)
    assert_equal(["year", "month"], result[:custom_method].arguments)
  end

  def test_call_returns_error_if_single_argument_contain_carriage_return
    input = {"custom_method"=>{"arguments"=>"year\n", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    assert_raise ArgumentError do
      @parser.call(input)
    end
  end

  def test_call_returns_error_if_multiple_arguments_contain_carriage_return
    input = {"custom_method"=>{"arguments"=>"year,month\n", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    assert_raise ArgumentError do
      @parser.call(input)
    end
  end

  def test_call_returns_error_if_multiple_arguments_contain_carriage_return_with_whitespace
    input = {"custom_method"=>{"arguments"=>"year      ,     month\n", "source"=>"d = Date.civil(year, 1, 1)\nd + 2\n"}}

    assert_raise ArgumentError do
      @parser.call(input)
    end
  end

  def test_call_returns_error_if_no_source
    input = {"custom_method"=>{"arguments"=>"year"}}
    assert_raise ArgumentError do
      @parser.call(input)
    end

    input = {"custom_method"=>{"arguments"=>"year", "source" => ""}}
    assert_raise ArgumentError do
      @parser.call(input)
    end
  end

  def test_call_returns_error_if_name_is_missing
    input = {""=>{"arguments"=>"year", "source" => "Date.civil(year, 1, 1)"}}

    assert_raise ArgumentError do
      @parser.call(input)
    end
  end

  def test_call_returns_empty_hash_if_methods_are_missing
    assert_equal({}, @parser.call(nil))
    assert_equal({}, @parser.call({}))
  end
end
