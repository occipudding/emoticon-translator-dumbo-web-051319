require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, arr|
    new_hash["get_meaning"][arr[1]] = meaning
    new_hash["get_emoticon"][arr[0]] = arr[1]
  end
  new_hash
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  library["get_emoticon"].key?(emoticon) ? library["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  binding.pry
end