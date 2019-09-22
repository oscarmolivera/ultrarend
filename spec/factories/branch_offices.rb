FactoryBot.define do
  factory :branch_office do |b|
    b.id              {1}
    b.name            {'Main Branch'}
    b.acronym         {'MNB'}
    b.company_id      {1}
  end

end


