# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/hr.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/hr'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module HR # :nodoc:
    def self.defined_regions
      [:hr]
    end

    def self.holidays_by_month
      {
              0 => [{:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Uskrs", :regions => [:hr]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Uskrsni ponedjeljak", :regions => [:hr]},
            {:function => lambda { |year| Holidays.easter(year)+60 }, :function_id => "easter(year)+60", :name => "Tijelovo", :regions => [:hr]}],
      1 => [{:mday => 1, :name => "Nova godina", :regions => [:hr]},
            {:mday => 6, :name => "Sveta tri kralja", :regions => [:hr]}],
      5 => [{:mday => 1, :name => "Međunarodni praznik rada", :regions => [:hr]}],
      6 => [{:mday => 22, :name => "Dan antifašističke borbe", :regions => [:hr]},
            {:mday => 25, :name => "Dan državnosti", :regions => [:hr]}],
      8 => [{:mday => 5, :name => "Dan pobjede i domovinske zahvalnosti i dan hrvatskih branitelja", :regions => [:hr]},
            {:mday => 15, :name => "Velika Gospa", :regions => [:hr]}],
      10 => [{:mday => 8, :name => "Dan neovisnosti", :regions => [:hr]}],
      11 => [{:mday => 1, :name => "Dan svih svetih", :regions => [:hr]}],
      12 => [{:mday => 25, :name => "Božić", :regions => [:hr]},
            {:mday => 26, :name => "Sveti Stjepan", :regions => [:hr]}]
      }
    end
  end


end

Holidays.merge_defs(Holidays::HR.defined_regions, Holidays::HR.holidays_by_month)
