require 'pry'

def nyc_pigeon_organizer(data)
  
  new_data_structure = data.each_with_object({}) {|(first_k,first_v), a|
  binding.pry
    v.each{|second_k,second_v|
      p "This runs"
      p "value: #{first_v}"
      p "key: #{first_k}"
    }
  }
  

  # Search for and input data into new structure
  new_data_structure.each{|key,value|
    # count = 0
    data.each{|basic_characteristic|
        spec_trait = ''
        basic_characteristic.each{|specific_traits|
            if specific_traits.class == Symbol
                spec_trait = specific_traits
            end
            if specific_traits.class != Symbol
                specific_traits.each{|trait_variant, names|
                    if names.include?(key) && spec_trait.class == Symbol
                      # p trait_variant
                      # p trait_variant.to_s
                      new_data_structure[key][spec_trait].push(trait_variant.to_s)
                    end
                }
            end
        }
    }
}


# End of method
end
 