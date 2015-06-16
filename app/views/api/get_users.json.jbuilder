json.users @users do |user|
  json.email user.email
  json.id user.id
  json.created_at time_ago_in_words(user.created_at)
end
