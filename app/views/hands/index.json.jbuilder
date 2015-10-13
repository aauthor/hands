json.array!(@hands) do |hand|
  json.extract! hand, :id, :owner, :status
  json.url hand_url(hand, format: :json)
end
