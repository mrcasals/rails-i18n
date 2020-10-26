require 'rails_i18n/common_pluralizations/one_other'

module RailsI18n
  module Pluralization
    module Slovenian
      def self.rule
        lambda do |n|
          n ||= 0
          mod100 = n % 100

          if mod100 == 1
            :one
          elsif mod100 == 2
            :two
          elsif mod100 == 3 || mod100 == 4
            :few
          else
            :other
          end
        end
      end
    end
  end
end

::RailsI18n::Pluralization::OneOther.with_locale(:sl)
