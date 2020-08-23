first_course = Course.create(name: 'CS 125',
                             professor: 'Geoff Challen')

second_course = Course.create(name: 'CSCI 596',
                            professor: 'Aiichiro Nakano')

third_course = Course.create(name: 'MASC')
3.times do |n|
  first_course.rooms.create(url: 'https://example.com',
                            capacity: 5,
                            occupants: 3,
                            start_time: Time.now,
                            end_time: 1.hour.from_now,
                            purpose: "Informal Group Study #{n}")

end

15.times do |n|
  course = Course.create(name: "MATH 2#{n}",
                         professor: Faker::Name.name,
                         )

  5.times do |room_n|
    course.rooms.create(url: 'https://example.com',
                        capacity: 50,
                        occupants: rand(50),
                        start_time: 1.day.from_now,
                        end_time: 1.day.from_now + 50.minutes,
                        purpose: "Lecture #{room_n}",
                        notice_board: Faker::Lorem.paragraph)
  end
end

# TODO test self join with @user.student and @user.instructor
