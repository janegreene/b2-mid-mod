require 'rails_helper'

RSpec.describe Movie do
  # describe "validations" do
  #   it {should validate_presence_of :title}
  # it {should validate_presence_of :creation_year}
    # it {should validate_presence_of :genre}
  # end

  describe "relationships" do
    it {should have_many(:actors).through(:actor_movies)}
    it {should belong_to :studio}
  end
  describe "methods" do
  end
end
# rails g migration CreateMovies title:string creation_year:integer genre:string
# add_foreign_key :movies, :studio
# rails g migration AddStudioToMovies studio:references
