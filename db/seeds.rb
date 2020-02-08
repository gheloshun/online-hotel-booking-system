User.create!(
  first_name: "Example",
  last_name: "User",
  birthdate: "October 20, 1991",
  email: "user@example.com",
  password: "foobar"
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

Room.create!(
  room_number: "101",
  room_rate: 850.00,
  occupied: true,
  max_capacity: 2,
  hotel_id: 1,
  room_class_id: 1
)
