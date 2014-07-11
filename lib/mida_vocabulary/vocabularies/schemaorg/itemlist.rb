# require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    autoload :CreativeWork, 'mida_vocabulary/vocabularies/schemaorg/creativework'

    # A list of items of any sort - for example, Top 10 Movies About Weathermen, or Top 100 Party Songs. Not to be confused with HTML lists, which are often used only for formatting.
    class ItemList < Mida::Vocabulary
      itemtype %r{http://schema.org/ItemList}i
      include_vocabulary Mida::SchemaOrg::Thing
      include_vocabulary Mida::SchemaOrg::CreativeWork

      # A single list item.
      has_many 'itemListElement'

      # Type of ordering (e.g. Ascending, Descending, Unordered).
      has_many 'itemListOrder'
    end

  end
end
