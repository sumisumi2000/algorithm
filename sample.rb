module ConstArray
  ARRAY = ["Ruby", "Java", "Go"].map!(&:freeze).freeze
end

ConstArray.freeze

ARRAY = ["Ruby", "Java", "Go"].map!(&:freeze).freeze

ARRAY = [1, 2, 3]

p ARRAY
