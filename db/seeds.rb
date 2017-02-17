Brewery.destroy_all
Style.destroy_all

breweries = [
  {
    name: "Bent Paddle",
    location: "Duluth, MN",
    url: "http://res.cloudinary.com/ders-cloud/image/upload/v1487372300/Bent-Paddle-Logo-for-Blog_wajkqh.jpg"
    },
  {
    name: "Surly",
    location: "Minneapolis, MN",
    url: "http://res.cloudinary.com/ders-cloud/image/upload/v1487341064/kbuui5seeslvrad98ebp.png"
    },
  {
    name: "Castle Danger",
    location: "Two Harbors, MN",
    url: "http://res.cloudinary.com/ders-cloud/image/upload/v1487326500/castle_danger_logo_ooevh7.png"
    },
  {
    name: "Lagunitas",
    location: "Petaluma, CA",
    url: "https://res.cloudinary.com/ders-cloud/image/upload/v1487372304/3577508.lagunitaslogo_ugqw9a.jpg"
    },
  {
    name: "Tin Whiskers",
    location: "St. Paul, MN",
    url: "http://res.cloudinary.com/ders-cloud/image/upload/v1487342161/mza0dfa1gat6qoll2na3.png"
    },
  {
    name: "Summit",
    location: "St. Paul, MN",
    url: "https://res.cloudinary.com/ders-cloud/image/upload/v1487347258/summit_logo_yamb2k.png"
    }
]

styles = %w(IPA Pilsner Lager Porter Stout Saison)
styles.each { |style| Style.create(name: style) }
breweries.each { |brewery| Brewery.create(brewery) }

Brewery.all.each  { |brewery| brewery.photo_url = brewery.url }

# url = "http://img.clubic.com/07791435-photo-playstation.jpg"
# product = Product.new(name: 'Playstation')
# product.save!
# product.photo_url = url # Upload happens here

# breweries = [
#   {
#     name: "Bent Paddle",
#     description: "",
#     location: ""
#     },
#   {
#     name: "Surly",
#     description: "",
#     location: ""
#     },
#   {
#     name: "Castle Danger",
#     description: "",
#     location: ""
#     },
#   {
#     name: "Lagunitas",
#     description: "",
#     location: ""
#     },
#   {
#     name: "Tin Whiskers",
#     description: "",
#     location: ""
#     },
#   {
#     name: "Summit",
#     description: "",
#     location: ""
#     }
# ]
