$LOAD_PATH.unshift File.dirname(__FILE__)
# require File.dirname(__FILE__) + '/mida_vocabulary/propertydesc.rb'
# require File.dirname(__FILE__) + '/mida_vocabulary/propertydesc.rb'
# require File.dirname(__FILE__) + '/mida_vocabulary/propertydesc.rb'
Dir.glob(File.dirname(__FILE__) + '/mida_vocabulary/**/*.rb').reverse {|file| require file}


# Mida is a Microdata parser and extractor.
module Mida

end

require 'mida_vocabulary/vocabularies/genericvocabulary'
require 'mida_vocabulary/vocabularies/schemaorg'
require 'mida_vocabulary/vocabularies/data_vocabulary'
