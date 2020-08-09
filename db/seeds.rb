first_course = Course.create(name: 'CS 125',
                             professor: 'Geoff Challen',
                             notice_board: 'Lectures every MWF 11am')

10.times do |n|
  first_course.rooms.create(url: 'https://example.com',
                            capacity: 5,
                            occupants: 3,
                            purpose: "Informal Group Study #{n}")

end

15.times do |n|
  course = Course.create(name: "MATH #{n}",
                         professor: Faker::Name.name,
                         notice_board: Faker::Lorem.paragraph)

  5.times do
    course.rooms.create(url: 'https://example.com',
                        capacity: 50,
                        occupants: rand(50),
                        purpose: "Lecture #{n}")
  end
end