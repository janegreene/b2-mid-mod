require 'rails_helper'

RSpec.describe Actor do
  # describe "validations" do
  #   it {should validate_presence_of :name}
    # it {should validate_presence_of :age}
  # end

  describe "relationships" do
    it {should have_many :movies}
    it {should have_many :studios}
  end
  describe "methods" do
  end
end
# rails g migration CreateActors name:string age:integer 
