require 'rails_helper'

RSpec.describe Actor do
  # describe "validations" do
  #   it {should validate_presence_of :name}
    # it {should validate_presence_of :age}
  # end

  describe "relationships" do
    it {should have_many(:movies).through(:actor_movies)}
    # it {should have_many :studios}
  end
  describe "methods" do
    it "#age_order" do
      sony = Studio.create(name:       "Sony",
                         location:  "Hollywood, CA")

      bill = Actor.create(name:  "Bill Paxton",
                           age:      57)
      tom = Actor.create(name: "Tom Hanks",
                           age:      60)
      kevin = Actor.create(name: "Kevin Bacon",
                           age:      51)

      apollo = Movie.create(title:"Apollo 13", creation_year: 1996, genre: "Drama", studio_id: sony.id )
      ActorMovie.create(actor_id: tom.id, movie_id: apollo.id)
      ActorMovie.create(actor_id: bill.id, movie_id: apollo.id)
      ActorMovie.create(actor_id: kevin.id, movie_id: apollo.id)


      expect(Actor.age_order.first).to eq(kevin)
      expect(Actor.age_order.last).to eq(tom)
  end
  end
end
# rails g migration CreateActors name:string age:integer
