# require modules here
require 'yaml'
require 'pry'
def load_library(file_name)
  final_hash={}
  #binding.pry
  hash = YAML.load_file(file_name)
    hash.each do |key, value|
      final_hash[key]={}
      final_hash[key][:english]= value[0]
      final_hash[key][:japanese]=value[1]
    # binding.pry
      
  end 
final_hash
end



def get_japanese_emoticon(path,emoticon)
  load_library(path).each do
    if value[:english] == emoticon
      return value[:japenese]
  
end

end
return "Sorry that emoticon was not found"
end
def get_english_meaning(path, emoticon)
 load_library(path).each do |key, value|
   if value[:japanese] == emoticon
    return key
 end
 end
    return "Sorry, that emoticon was not found"
end