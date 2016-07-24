require './models/user'

# seeds.rb is a way of automatically populating tables with data!


(100..110).each do |i|
  User.create(first_name: "LUSER ##{i}", last_name: "人 ◕ ‿‿ ◕ 人", email: "luser##{i}@email.address", address: "#{i+20} Luserville Walk", password: "#{i}#{i+1}#{i+2}#{i+3}", cc_number: "#{i+i}#{i+i+i}#{i+i+i+i}")
end



# (001..010).each do |i|
#   Products.create(name: "Vegetable No.#{i}", brand_id: , category_id: , price: )
# end
