json.array!(@class_proposals) do |class_proposal|
  json.extract! class_proposal, :id, :class_name, :description
  json.url class_proposal_url(class_proposal, format: :json)
end
