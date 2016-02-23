json.array!(@mailings) do |mailing|
  json.extract! mailing, :id, :list_id, :template, :date
  json.url mailing_url(mailing, format: :json)
end
