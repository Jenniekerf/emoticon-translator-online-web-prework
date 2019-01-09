require "yaml"
# require modules here

def load_library(path)
  emoticons = {
    "get_meaning"=> {},
    "get_emoticon" => {},
    }
    YAML.load_file(path).each do |meaning, describe|
      english, japanese = describe
        emoticons["get_meaning"][japanese] = meaning
        emoticons["get_emoticon"][english] = japanese
    end
    emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end