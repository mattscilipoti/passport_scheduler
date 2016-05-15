FactoryGirl.define do
  factory :klass do
    association :teacher
    description "A core class and subject taught at Hogwarts School of Witchcraft and Wizardry. In this class students learn how to magically defend themselves against Dark Creatures, the Dark Arts, and other dark charms. Offensive magic is also taught in this class, such as how to duel, which requires the use of both offensive and defensive magic."
    name "Defense Against the Dark Arts"
    student_age_minimum 1
    student_age_maximum 99

    factory :class_proposal do
      status Klass.statuses[:proposed]
    end
  end
end
