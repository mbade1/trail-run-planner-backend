user_one = User.create(username: 'Rudy', password_digest: 'password')
user_two = User.create(username: 'Theo', password_digest: 'password')

journal_one = Journal.create(user_id: 1, trail_id: 1)
journal_two = Journal.create(user_id: 2, trail_id: 2)
