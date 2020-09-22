user_one = User.create(username: 'Rudy', email: 'rudy@gmail.com', password: 'password')
user_two = User.create(username: 'Theo', email: 'theo@gmail.com', password: 'password')


journal_one = Journal.create(user_id: 1, trail_id: 1)
journal_two = Journal.create(user_id: 2, trail_id: 2)

trail_one = Trail.create(hiker_project_id: 1, name: 'Tough Nutter', summary: 'a beautiful trail', difficulty: 'challenging', imgMedium: 'image.jpg', length: 3.4, ascent: 140.6, descent: 0, conditionStatus: 'All clear', conditionDetails: 'Dry', conditionDate: '2020-09-16 14:37:11')
trail_two = Trail.create(hiker_project_id: 2, name: 'Even Tougher Nutter', summary: 'a hardcore trail', difficulty: 'insanely difficult', imgMedium: 'image.jpg', length: 20.4, ascent: 14000.6, descent: -15002, conditionStatus: 'clear, but deadly', conditionDetails: 'All', conditionDate: '2020-09-16 14:00:11')