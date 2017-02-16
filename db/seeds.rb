Brewery.destroy_all
Style.destroy_all

breweries = [
  {
    name: "Bent Paddle",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    },
  {
    name: "Surly",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    },
  {
    name: "Castle Danger",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    },
  {
    name: "Lagunitas",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    },
  {
    name: "Tin Whiskers",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    },
  {
    name: "3 Floyds",
    picture: "https://pbs.twimg.com/profile_images/594689468646305792/I0YswTOY.jpg"
    }
]

styles = %w(ipa pilsner lager porter saison)
styles.each { |style| Style.create(name: style) }


breweries.each { |brewery| Brewery.create(brewery) }
