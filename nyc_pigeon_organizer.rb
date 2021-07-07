def nyc_pigeon_organizer(data)
newHash = Hash.new
  data.each_pair {|attribute, value|
    value.each_pair {|value, owner|
        owner.each {|name|
          newHash[name] = Hash.new if !newHash[name]
          newHash[name][attribute] = Array.new if !newHash[name][attribute]

          newHash[name][attribute] << value.to_s
        }
    }
  }
  newHash
end
