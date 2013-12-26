# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/sk.yaml
  #
  # To use the definitions in this file, load it right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/sk'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module SK # :nodoc:
    def self.defined_regions
      [:sk]
    end

    def self.holidays_by_month
      {
      0 => [{:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Veľkonočný pondelok", :regions => [:sk]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Veľký piatok", :regions => [:sk]}]
      1 => [{:mday => 1, :name => "Nový rok", :regions => [:sk]}],
      5 => [{:mday => 1, :name => "Sviatok práce", :regions => [:sk]},
            {:mday => 8, :name => "Deň víťazstva", :regions => [:sk]}],
      7 => [{:mday => 5, :name => "Sviatok svätého Cyrila a svätého Metoda", :regions => [:sk]}],
      8 => [{:mday => 29, :name => "Výročie Slovenského národného povstania", :regions => [:sk]}]
      9 => [{:mday => 1, :name => "Deň Ústavy Slovenskej republiky", :regions => [:sk]},
            {:mday => 15, :name => "Sedembolestná Panna Mária", :regions => [:sk]}],
      11 => [{:mday => 1, :name => "Sviatok všetkých svätých", :regions => [:sk]},
             {:mday => 17, :name => "Deň boja za slobodu a demokraciu", :regions => [:sk]}],
      12 => [{:mday => 24, :name => "Štedrý deň", :regions => [:sk]},
            {:mday => 25, :name => "1. sviatok vianočný", :regions => [:sk]},
            {:mday => 26, :name => "2. sviatek vianočný", :regions => [:sk]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::SK.defined_regions, Holidays::SK.holidays_by_month)
