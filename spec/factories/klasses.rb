FactoryGirl.define do
  factory :klass do
    name "Defense Against the Dark Arts"
    description "A core class and subject taught at Hogwarts School of Witchcraft and Wizardry. In this class students learn how to magically defend themselves against Dark Creatures, the Dark Arts, and other dark charms. Offensive magic is also taught in this class, such as how to duel, which requires the use of both offensive and defensive magic."
    association :teacher

    factory :class_proposal do
      status Klass.statuses[:proposed]
    end
  end
end
