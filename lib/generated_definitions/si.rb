# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/si.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/si'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module SI # :nodoc:
    def self.defined_regions
      [:si]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "velikonočna nedelja", :regions => [:si]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "velikonočni ponedeljek", :regions => [:si]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "binkošti", :regions => [:si]}],
      1 => [{:mday => 1, :name => "novo leto", :regions => [:si]}],
      2 => [{:mday => 8, :name => "Prešernov dan, slovenski kulturni praznik", :regions => [:si]}],
      4 => [{:mday => 27, :name => "dan upora proti okupatorju", :regions => [:si]}],
      5 => [{:mday => 1, :name => "praznik dela", :regions => [:si]},
            {:mday => 2, :name => "praznik dela", :regions => [:si]}],
      6 => [{:mday => 25, :name => "dan državnosti", :regions => [:si]}],
      8 => [{:mday => 15, :name => "Marijino vnebovzetje", :regions => [:si]}],
      10 => [{:mday => 31, :name => "dan reformacije", :regions => [:si]}],
      11 => [{:mday => 1, :name => "dan spomina na mrtve", :regions => [:si]}],
      12 => [{:mday => 25, :name => "božič", :regions => [:si]},
            {:mday => 26, :name => "dan samostojnosti in enotnosti", :regions => [:si]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::SI.defined_regions, Holidays::SI.holidays_by_month)
