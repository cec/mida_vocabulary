Dir.glob(File.dirname(__FILE__) + '/data_vocabulary/*.rb').reverse {|file| require file}
