require 'pry'

def nyc_pigeon_organizer(data)
  
  # First each_with_object passes in empty object, and iterated through first set of keys in data from parameter of 'nyc_pigeon_organizer'
  new_data_structure = data.each_with_object({}) {|(first_k,first_v), first_a|
    
    # Second each iterates through nested keys
    first_v.each{|(second_k, second_v)|
    # Third each iterates 
      second_v.each{|name|
        if !first_a[name]
          first_a[name] = {}
        end
        if !first_a[name][first_k]
          first_a[name][first_k] = []
        end
        first_a[name][first_k].push(second_k.to_s)
        # binding.pry
      }
    }
  
    first_a
  }

  # Originally I was going to build the new data structure out and then populate it with this block statement below, however the first block statement above did the trick!
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
 