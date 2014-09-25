json.array!(@mashes) do |mash|
  json.extract! mash, :id, :durability, :efficiency, :assembly, :proportion, :scale, :semantics, :lifespan, :recycle, :process, :learning_curve, :barriers, :safety, :pleasure
  json.url mash_url(mash, format: :json)
end
