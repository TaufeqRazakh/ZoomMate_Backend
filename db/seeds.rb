first_course = Course.create(name: 'CS 125',
                             professor: 'Geoff Challen',
                             notice_board: 'Lectures every MWF 11am')

first_course.rooms.create(url: 'https://example.com',
                          capacity: 5,
                          occupants: 3,
                          purpose: 'Informal Group Study')