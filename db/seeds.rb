User.create!(
  [
    {
      first_name: "Example",
      last_name: "User",
      birthdate: "October 20, 1991",
      email: "user@example.com",
      password: "foobar",
      admin: false
    },
    {
      first_name: "Example",
      last_name: "Admin",
      birthdate: "November 21, 1991",
      email: "admin@example.com",
      password: "foobar",
      admin: true
    }
  ]

)

HotelContact.create!(
  contact_number: "+639239982783"
)

Hotel.create!(
  hotel_name: "David Regency Hotel",
  hotel_address: "Makati City",
  hotel_contact_id: 1
)

Ammenity.create!(
  ammenities: ["Basketball Court", "Swimming Pool"]
)

RoomClass.create!(
  room_class: "Deluxe Room",
  room_info: "Featured in Real Living Magazine. Rustic and Romantic French country.... Amazing view of Taal right from your bed or balcony. Beside Tagaytay's iconic rotonda (Roundabout) and close to malls. We have our own free parking slot.",
  bedroom_contents: ["Two (2) double-sized (54feet x 75feet) beds that can fit ONLY 4 people"],
  balcony_contents: ["2 chairs", "1 circle table"],
  kitchen_contents: ["Refrigerator", "pans and pots",
                    "Single-top induction cooker",
                    "Air-circulating range hood with charcol filter"
                    ],
  living_room_contents: ["Cable TV", "Wifi router", "Sofa bed"],
  ammenity_id: 1
)

if Room.count.zero?
  room1 = Room.create!(
    room_name: "Casa Primo Tagaytay w/ WIFI, Netflix & Pool",
    room_number: "101",
    room_rate: 850.00,
    occupied: false,
    max_capacity: 2,
    hotel_id: 1,
    room_class_id: 1,
    cleaning_fee: 398.00,
    service_fee: 257.00,
    published: true
  )
  room1.images.attach(io: File.open('/home/ghelo/Pictures/images/1.jpg'), filename: '1.jpg')
  room1.images.attach(io: File.open('/home/ghelo/Pictures/images/2.jpg'), filename: '2.jpg')
  room1.images.attach(io: File.open('/home/ghelo/Pictures/images/3.jpg'), filename: '3.jpg')
  room1.images.attach(io: File.open('/home/ghelo/Pictures/images/4.jpg'), filename: '4.jpg')

  room2 = Room.create!(
    room_name: "Nordic Grande - 33.5 SQM + Free Netflix + PS4",
    room_number: "102",
    room_rate: 900.00,
    occupied: false,
    max_capacity: 2,
    hotel_id: 1,
    room_class_id: 1,
    cleaning_fee: 398.00,
    service_fee: 257.00,
    published: true
  )
  room2.images.attach(io: File.open('/home/ghelo/Pictures/images/5.jpg'), filename: '5.jpg')
  room2.images.attach(io: File.open('/home/ghelo/Pictures/images/6.jpg'), filename: '6.jpg')
  room2.images.attach(io: File.open('/home/ghelo/Pictures/images/7.jpg'), filename: '7.jpg')
  room2.images.attach(io: File.open('/home/ghelo/Pictures/images/8.jpg'), filename: '8.jpg')
  room2.images.attach(io: File.open('/home/ghelo/Pictures/images/9.jpg'), filename: '9.jpg')
end
