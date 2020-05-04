require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_names = {}
data.each do |color_gender_live, info|
  info.each do |keys, names|
    names.each do |name|
      if pigeon_names[name] == nil 
        pigeon_names[name] = {}
        # binding.pry
    end 
    if pigeon_names[name][color_gender_live] == nil
      pigeon_names[name][color_gender_live] = []
      end
    pigeon_names[name][color_gender_live].push(keys.to_s)
    end
    end
  end
  pigeon_names
end


# first off we create a new hash to store our data in.
# is our data hash we must iterate over the :color, :gender: and :lives -- i.e (color_gender_live); along with their key/value pairs i.e(info)
#we then want to iterate over our info(keys) and find the array of igeon names(names) inside of them.
# we then want to iterate through the names(name)  because we will then be able to grab each pigeon name individually.

# then we ask --> if the there are no pigeon names in our empty hash, we must return an empty hash with each name of that pigeon creating their own empty hashes
# then we ask --> if there are no pigeon names key and the color/gender/live key for our empty hash, we must assign and return it as an empty array.
# lastly, we want to append to our pigeon_name[names][color_gender_live] its values (the info) into the arrays which are now converted strings

# resulting in returning the new pigeon hash