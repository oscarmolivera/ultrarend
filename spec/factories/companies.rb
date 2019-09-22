FactoryBot.define do
  factory :company do |c|
    c.id                    {1}
    c.name                  {'Testing Company'}
    c.federal_number        {'68.125.887-0'}
  end

end
