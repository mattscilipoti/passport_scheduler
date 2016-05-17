FactoryGirl.define do
  factory :klass do
    description { "DESCRIPTION for #{name}"}
    sequence(:name) {|n| "TEST Class#{n}"}
    student_age_minimum 1
    student_age_maximum 99
    student_count_minimum 4
    student_count_maximum 15
    year Date.today.year

    factory :class_proposal do
      status Klass.statuses[:proposed]
    end
  end
end
