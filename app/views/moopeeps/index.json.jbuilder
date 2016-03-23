json.array!(@moopeeps) do |moopeep|
  json.extract! moopeep, :id, :username, :firstname, :surname, :email
  json.url moopeep_url(moopeep, format: :json)
end
