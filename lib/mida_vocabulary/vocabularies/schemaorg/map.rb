# require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    autoload :CreativeWork, 'mida_vocabulary/vocabularies/schemaorg/creativework'

    # A map.
    class Map < Mida::Vocabulary
      itemtype %r{http://schema.org/Map}i
      include_vocabulary Mida::SchemaOrg::Thing
      include_vocabulary Mida::SchemaOrg::CreativeWork
    end

  end
end
