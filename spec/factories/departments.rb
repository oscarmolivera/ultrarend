FactoryBot.define do
  factory :department do |d|
    d.id              {1}
    d.name            {'First_deparment'}
    d.acronym         {'DPT'}
    d.company_id      {1}
  end

end
