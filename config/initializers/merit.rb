# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  config.current_user_method = 'current_user'
end

# Create application badges (uses https://github.com/norman/ambry)
# badge_id = 0
# [{
#   id: (badge_id = badge_id+1),
#   name: 'just-registered'
# }, {
#   id: (badge_id = badge_id+1),
#   name: 'best-unicorn',
#   custom_fields: { category: 'fantasy' }
# }].each do |attrs|
#   Merit::Badge.create! attrs
# end

# Create application badges (uses https://github.com/norman/ambry)

[{id: 1, name: 'Diamond', description: 'You have participated good in our boards! (level 5)', custom_fields: { min_points: "1000"}, image: '/assets/badges/badge5.png'},
{ id: 2, name: 'Platinum', description: 'You have participated good in our boards! (level 4)', custom_fields: { min_points: "500"}, image: '/assets/badges/badge4.png'},
{ id: 3, name: 'Gold', description: 'You have participated good in our boards! (level 3)', custom_fields: { min_points: "100"}, image: '/assets/badges/badge3.png'},
{ id: 4, name: 'Silver', description: 'You have participated good in our boards! (level 2)', custom_fields: { min_points: "50"}, image: '/assets/badges/badge2.png'},
{ id: 5, name: 'Bronze', description: 'You have participated good in our boards! (level 1)', custom_fields: { min_points: "0"}, image: '/assets/badges/badge1.png'}
].each do |badge|
  Merit::Badge.create! badge
end