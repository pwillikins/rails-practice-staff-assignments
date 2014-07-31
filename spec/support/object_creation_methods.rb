def create_user(overrides = {})
  User.create!({
    name: 'Some User',
    email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password'
  }.merge(overrides))
end

def create_person(overrides = {})
  Person.create!({
    title: 'Mr',
    first_name: 'Paul',
    last_name: 'Stone'
                 }.merge(overrides))
end