require 'pry'
  
def nyc_pigeon_organizer(data)

  data_organiser = {}
    data.each do |key, value|
    value.each do |attributes, names|
      names.each do |name|
        
        unless data_organiser.include?(name)
          data_organiser[name] = {}
        end

      unless data_organiser.include?(name) && data_organiser[name].include?(key)
          data_organiser[name][key] = []
        end

        s_attributes = attributes.to_s
        
        data_organiser[name][key] << s_attributes
      end
    end
  end
  data_organiser
end
