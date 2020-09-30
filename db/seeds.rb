user_one = User.create(username: 'Rudy', email: 'rudy@gmail.com', password: 'password')
user_two = User.create(username: 'Theo', email: 'theo@gmail.com', password: 'password')


journal_one = Journal.create(user_id: 1, trail_id: 1)
journal_two = Journal.create(user_id: 2, trail_id: 2)

trail_one = Trail.create(hiker_project_id: 1, date_of_run: '2020-09-30T09:19')
trail_two = Trail.create(hiker_project_id: 2, date_of_run: '2020-09-30T09:19')