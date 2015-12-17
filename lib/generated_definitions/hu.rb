# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/hu.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/hu'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module HU # :nodoc:
    def self.defined_regions
      [:hu]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Húsvét hétfő", :regions => [:hu]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :function_id => "easter(year)+50", :name => "Pünkösd hétfő", :regions => [:hu]}],
      1 => [{:mday => 1, :name => "Újév", :regions => [:hu]}],
      3 => [{:mday => 15, :name => "1848/49-es forradalom és szabadságharc ünnepe", :regions => [:hu]}],
      5 => [{:mday => 1, :name => "A munka ünnepe", :regions => [:hu]}],
      8 => [{:mday => 20, :name => "Az államalapítás ünnepe", :regions => [:hu]}],
      10 => [{:mday => 23, :name => "1956-os forradalom és szabadságharc ünnepe", :regions => [:hu]}],
      11 => [{:mday => 1, :name => "Mindenszentek", :regions => [:hu]}],
      12 => [{:mday => 25, :name => "Karácsony", :regions => [:hu]},
            {:mday => 26, :name => "Karácsony", :regions => [:hu]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::HU.defined_regions, Holidays::HU.holidays_by_month)
