require 'rails_helper'

RSpec.describe "the movie show page" do
  it "I see the movie's title, creation year, and genre" do
    # it "a list of all its actors from youngest to oldest" do
      # it "average age of all of the movie's actors" do
    sony = Studio.create(name:       "Sony",
                       location:  "Hollywood, CA")
    apollo = sony.movies.create(title:"Apollo 13", creation_year: 1996, genre: "Drama" )
    van = sony.movies.create(title:"Van Wilder", creation_year: 1999, genre: "Comedy" )

    visit "/movies/#{apollo.id}"
    expect(page).to have_content(apollo.title)
    expect(page).to have_content(apollo.creation_year)
    expect(page).to have_content(apollo.genre)
    expect(page).not_to have_content(van.title)

  end
 it "a list of all its actors from youngest to oldest" do
    # it "average age of all of the movie's actors" do
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

  visit "/movies/#{apollo.id}"

  expect("Kevin Bacon").to appear_before("Bill Paxton")
  expect("Bill Paxton").to appear_before("Tom Hanks")
end
end
  # end
# end

# Story 2
# As a visitor,
# When I visit a movie's show page.
# I see the movie's title, creation year, and genre,
# and a list of all its actors from youngest to oldest.
# And I see the average age of all of the movie's actors
