$LOAD_PATH.unshift File.dirname(__FILE__)
Dir.glob(File.dirname(__FILE__) + '/mida_vocabulary/*.rb').reverse {|file| require file}


# Mida is a Microdata parser and extractor.
module Mida

end

require 'mida_vocabulary/vocabularies/genericvocabulary'
require 'mida_vocabulary/vocabularies/schemaorg'
require 'mida_vocabulary/vocabularies/data_vocabulary'
