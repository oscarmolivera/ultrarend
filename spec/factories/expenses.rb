FactoryBot.define do
  factory :expense do
    reference { "" }
    expense_date { "2019-10-08" }
    provider_utr { "MyString" }
    document_type { "MyString" }
    document_num { "MyString" }
    concept { "MyString" }
    observation { "MyString" }
    net_cost { 1.5 }
    excent_amount { 1.5 }
    iva_tax { 1.5 }
    other_tax { 1.5 }
  end
end
