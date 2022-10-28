Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

City.create(city_name: "Toulouse", zip_code: "31000")
City.create(city_name: "Albi", zip_code: "81000")

Dog.create(dog_name: "wouaf1", dog_breed: "pasouf", city_id: City.all.sample.id)
Dog.create(dog_name: "wouaf2", dog_breed: "ouf", city_id: City.all.sample.id)
Dog.create(dog_name: "wouaf3", dog_breed: "ouf", city_id: City.all.sample.id)
Dog.create(dog_name: "wouaf4", dog_breed: "pasouf", city_id: City.all.sample.id)

7.times do |i|
    Dogsitter.create(first_name: "Paul#{i}", last_name:"Paulencore", city_id: City.all.sample.id)
end

10.times do
    Stroll.create(dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id, date: "22/08/2022 00:00:00")
end