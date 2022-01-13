=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/two-fer` directory.
=end

class TwoFer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def two_fer
    @name = name.nil?
  end
end
