# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clubs = Club.create({
  [{
    id: 1,
    cAbbrv: "BOS",
    city: "Boston",
    address: "4 Avery Street at Tremont\nBoston, MA 02111",
    brand: "Sports Club/LA",
    phone: "617.375.8200",
    link: "617.375.8200",
    sfdc_name: "Boston",
    fb: "https://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  }],
  [{
    id: 6,
    cAbbrv: "DC",
    city: "Washington, DC",
    address: "1170 22nd at \"M\" Street, NW\nWashington, DC 20037",
    brand: "Sports Club/LA",
    phone: "Sports Club/LA",
    link: "http://dc.sportsclubla.com",
    sfdc_name: "DC",
    fb: "https://www.facebook.com/thesportsclubla"
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  }],
  [{
    id: 2,
    cAbbrv: "MIA",
    city: "Miami",
    address: "Four Seasons Tower\n1441 Brickell Avenue\nMiami, FL 33131",
    brand: "Sports Club/LA",
    phone: "305.533.1199",
    link: "305.533.1199",
    sfdc_name: "Miami",
    fb: "https://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  }],
  [{
    id: 4,
    cAbbrv: "REE",
    city: "New York",
    address: "160 Columbus Avenue\nNew York, NY 10023",
    brand: "Reebok Sports Club/NY",
    phone: "212.362.6800",
    link: "212.362.6800",
    sfdc_name: "Reebok",
    fb: "https://www.facebook.com/reeboksportsclubny",
    twitter: "RbkSportsClubNY",
    timezone: "America/New_York"
  }],
  [{
    id: 5,
    cAbbrv: "SF",
    city: "San Francisco",
    address: "747 Market Street\nSan Francisco, CA 94103",
    brand: "Sports Club/LA",
    phone: "415.633.3900",
    link: "415.633.3900",
    sfdc_name: "San Francisco",
    fb: "https://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/Los_Angeles"
  }],
  [{
    id: 3,
    cAbbrv: "UES",
    city: "Upper East Side",
    address: "330 East 61st Street\nNew York, NY 10065",
    brand: "Sports Club/LA",
    phone: "212.355.5100",
    link: "212.355.5100",
    sfdc_name: "Upper East Side",
    fb: "https://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  }],
  [{
    id: 7,
    cAbbrv: "CNH",
    city: "Chestnut Hill",
    address: "55 Boylston St\nChestnut Hill, MA 02467",
    brand: "Sports Club/LA",
    phone: "617.244.5010",
    link: "617.244.5010",
    sfdc_name: "Chestnut Hill",
    fb: "http://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  }]
})

users = User.create({
  [{
    first_name: 'Ben',
    last_name:  'Saufley',
    approved:   true,
    email:      'bsaufley@mp-sportsclub.com'
  }],
  [{
    first_name: 'Stuart',
    last_name:  'Terrett',
    approved:   true,
    email:      'sterrett@mp-sportsclub.com'
  }],
  [{
    first_name: 'Kelvin',
    last_name:  'Everitt',
    approved:   true,
    email:      'keveritt@mp-sportsclub.com'
  }],
  [{
    first_name: 'Rob',
    last_name:  'Kram',
    approved:   true,
    email:      'rkram@mp-sportsclub.com'
  }]
})

users.each do |u|
  user.update_attribute(admin, true)
  user.clubs << Club.all
end