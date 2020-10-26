require 'rails_i18n/common_pluralizations/one_other'

module RailsI18n
  module Pluralization
    module Irish
      def self.rule
        lambda do |n|
          if n == 1
            :one
          elsif n == 2
            :two
          elsif (3..6).to_a.include?(n)
            :few
          elsif (7..10).to_a.include?(n)
            :many
          else
            :other
          end
        end
      end
    end
  end
end

::RailsI18n::Pluralization::OneOther.with_locale(:ga)
