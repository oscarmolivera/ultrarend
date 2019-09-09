FactoryBot.define do
  sequence :email do |n|
    "test#{n}@mytest.com"
  end

  factory :user do |f|
    f.first_name            {'Jon'}
    f.last_name             {'Snow'}
    f.email                 {generate :email}
    f.password              {'asdfasdf'}
    f.password_confirmation {'asdfasdf'}
  end

  factory :sys_admin, class: 'SysAdmin' do |f|
    f.first_name            {'Admin'}
    f.last_name             {'User'}
    f.email                 {generate :email}
    f.password              {'asdfasdf'}
    f.password_confirmation {'asdfasdf'}
  end

  factory :trabajador, class: 'Trabajador' do |f|
    f.first_name            {'Usuario'}
    f.last_name             {'Sistema'}
    f.email                 {generate :email}
    f.password              {'asdfasdf'}
    f.password_confirmation {'asdfasdf'}
  end
end
