# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/be.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/be'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module BE # :nodoc:
    def self.defined_regions
      [:be]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Pâques", :regions => [:be]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Lundi de Pâques", :regions => [:be]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :function_id => "easter(year)+39", :name => "Ascension", :regions => [:be]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "Pentecôte", :regions => [:be]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :function_id => "easter(year)+50", :name => "Lundi de Pentecôte", :regions => [:be]}],
      1 => [{:mday => 1, :name => "Jour de l'an", :regions => [:be]}],
      5 => [{:mday => 1, :name => "Fête du travail", :regions => [:be]}],
      7 => [{:mday => 21, :name => "Fête nationale", :regions => [:be]}],
      8 => [{:mday => 15, :name => "Assomption", :regions => [:be]}],
      11 => [{:mday => 1, :name => "Toussaint", :regions => [:be]},
            {:mday => 11, :name => "Armistice 1918", :regions => [:be]}],
      12 => [{:mday => 25, :name => "Noël", :regions => [:be]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::BE.defined_regions, Holidays::BE.holidays_by_month)
