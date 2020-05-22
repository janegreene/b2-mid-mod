require 'rails_helper'

RSpec.describe "the studio index page" do
  it "list of studios with the names of all of its movies bellow" do
    sony = Studio.create(name:       "Sony",
                       location:  "Hollywood, CA")
    mgm = Studio.create(name: "MGM",
                       location:  "Buena Vista, CA")
    apollo = sony.movies.create(title:"Apollo 13", creation_year: 1996, genre: "Drama" )
    van = sony.movies.create(title:"Van Wilder", creation_year: 1999, genre: "Comedy" )
    grumpy = mgm.movies.create(title:"Grumpy Old Men", creation_year: 1993, genre: "Comedy")
    water = mgm.movies.create(title:"Water Boy", creation_year: 1997, genre: "Comedy")


    visit '/studios'

     within(".studio-#{sony.id}") do
      expect(page).to have_content(apollo.name)
      expect(page).to have_content(van.name)
    end
     within(".studio-#{mgm.id}") do
      expect(page).to have_content(grumpy.name)
      expect(page).to have_content(water.name)
    end
  end
end


# Story 1
# As a visitor,
# When I visit the studio index page
# I see a list of all of the movie studios
# And underneath each studio, I see the names of all of its movies.
