p_data = {
  color: {
    purple: ['Theo', 'Peter Jr.', 'Lucky'],
    grey: ['Theo', 'Peter Jr.', 'Ms. K'],
    white: ['Queenie', 'Andrew', 'Ms. K', 'Alex'],
    brown: %w[Queenie Alex]
  },
  gender: {
    male: ['Alex', 'Theo', 'Peter Jr.', 'Andrew', 'Lucky'],
    female: ['Queenie', 'Ms. K']
  },
  lives: {
    'Subway' => %w[Theo Queenie],
    'Central Park' => ['Alex', 'Ms. K', 'Lucky'],
    'Library' => ['Peter Jr.'],
    'City Hall' => ['Andrew']
  }
}

def nyc_pigeon_organizer(data)
  
  new_data_structure = data.each_with_object({}) {|(first_k,first_v), first_a|

    # p "first_k #{first_k}"
    # p "first_v #{first_v}"
    # p "first_a: #{first_a}"
    
    object = first_v.each_with_object({}){|(second_k, second_v), second_a|
      # p "second_k: #{second_k}"
      # p "second_v: #{second_v}"
      # p "second_a: #{second_a}"
      
      second_v.each{|name|

        second_a[name] = first_k
      }
    }
    p object


    object.each{|k,v|
      
      # p first_a
      p "k: #{k} type: #{k.class}"
      p "v: #{v} type: #{v.class}"
    }

    # p "first_a: #{first_a}"
    # p "second_a: #{second_a}"
  }
  
  # p "new_data_structure: #{new_data_structure}"

  # binding.pry

  # Search for and input data into new structure
#   new_data_structure.each{|key,value|
#     # count = 0
#     data.each{|basic_characteristic|
#         spec_trait = ''
#         basic_characteristic.each{|specific_traits|
#             if specific_traits.class == Symbol
#                 spec_trait = specific_traits
#             end
#             if specific_traits.class != Symbol
#                 specific_traits.each{|trait_variant, names|
#                     if names.include?(key) && spec_trait.class == Symbol
#                       # p trait_variant
#                       # p trait_variant.to_s
#                       new_data_structure[key][spec_trait].push(trait_variant.to_s)
#                     end
#                 }
#             end
#         }
#     }
# }


# End of method
end

nyc_pigeon_organizer(p_data)
 