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
  # save_and_open_page
  expect(page).to have_content(apollo.title)
  expect(page).to have_content(apollo.creation_year)
  expect(page).to have_content(apollo.genre)

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
