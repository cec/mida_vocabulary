# require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    autoload :Event, 'mida_vocabulary/vocabularies/schemaorg/event'

    # Event type: Food event.
    class FoodEvent < Mida::Vocabulary
      itemtype %r{http://schema.org/FoodEvent}i
      include_vocabulary Mida::SchemaOrg::Thing
      include_vocabulary Mida::SchemaOrg::Event
    end

  end
end
