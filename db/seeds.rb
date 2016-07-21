require './models/user'

# seeds.rb is a way of automatically populating tables with data!


(100..110).each do |i|
  User.create(name: "LUSER ##{i}", email: "luser##{i}@email.address", address: "#{i+20} Luserville Walk", password: "#{i}#{i+1}#{i+2}#{i+3}", cc_number: "#{i+i}#{i+i+i}#{i+i+i+i}")
end
