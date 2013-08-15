# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

clubs = Club.create(
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
  },
  {
    id: 6,
    cAbbrv: "DC",
    city: "Washington, DC",
    address: "1170 22nd at \"M\" Street, NW\nWashington, DC 20037",
    brand: "Sports Club/LA",
    phone: "Sports Club/LA",
    link: "http://dc.sportsclubla.com",
    sfdc_name: "DC",
    fb: "https://www.facebook.com/thesportsclubla",
    twitter: "SportsClub_LA",
    timezone: "America/New_York"
  },
  {
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
  },
  {
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
  },
  {
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
  },
  {
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
  },
  {
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
)

users = User.create(
  [{
    first_name: 'Ben',
    last_name:  'Saufley',
    approved:   true,
    email:      'bsaufley@mp-sportsclub.com'
  },
  {
    first_name: 'Stuart',
    last_name:  'Terrett',
    approved:   true,
    email:      'sterrett@mp-sportsclub.com'
  },
  {
    first_name: 'Kelvin',
    last_name:  'Everitt',
    approved:   true,
    email:      'keveritt@mp-sportsclub.com'
  },
  {
    first_name: 'Rob',
    last_name:  'Kram',
    approved:   true,
    email:      'rkram@mp-sportsclub.com'
  }]
)

users.each do |u|
  u.update_attribute(:admin, true)
  u.clubs << Club.all
end

studios = Studio.create(
  [{
    club_id: 6,
    name: 'Basketball Court',
    description: ''
  },
  {
    club_id: 5,
    name: 'Boxing Studio',
    description: ''
  },
  {
    club_id: 3,
    name: 'Boxing Studio',
    description: ''
  },
  {
    club_id: 1,
    name: 'Pilates',
    description: ''
  },
  {
    club_id: 1,
    name: 'Fire',
    description: ''
  },
  {
    club_id: 4,
    name: 'Fire',
    description: ''
  },
  {
    club_id: 5,
    name: 'Fitness Area',
    description: ''
  },
  {
    club_id: 1,
    name: 'FKO',
    description: ''
  },
  {
    club_id: 5,
    name: 'Flex Room',
    description: ''
  },
  {
    club_id: 5,
    name: 'Longevity',
    description: ''
  },
  {
    club_id: 3,
    name: 'Mind/Body',
    description: ''
  },
  {
    club_id: 1,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 6,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 4,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 5,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 3,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 5,
    name: 'Power',
    description: ''
  },
  {
    club_id: 1,
    name: 'REV',
    description: ''
  },
  {
    club_id: 6,
    name: 'REV',
    description: ''
  },
  {
    club_id: 2,
    name: 'REV',
    description: ''
  },
  {
    club_id: 4,
    name: 'REV',
    description: ''
  },
  {
    club_id: 5,
    name: 'REV',
    description: ''
  },
  {
    club_id: 3,
    name: 'REV',
    description: ''
  },
  {
    club_id: 4,
    name: 'Rooftop Terrace',
    description: ''
  },
  {
    club_id: 3,
    name: 'Rooftop Terrace',
    description: ''
  },
  {
    club_id: 1,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 6,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 2,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 4,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 5,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 3,
    name: 'Studio 1',
    description: ''
  },
  {
    club_id: 6,
    name: 'Studio 2',
    description: ''
  },
  {
    club_id: 2,
    name: 'Studio 2',
    description: ''
  },
  {
    club_id: 4,
    name: 'Studio 2',
    description: ''
  },
  {
    club_id: 5,
    name: 'Studio 2',
    description: ''
  },
  {
    club_id: 4,
    name: 'Track',
    description: ''
  },
  {
    club_id: 5,
    name: 'Trio Studio',
    description: ''
  },
  {
    club_id: 1,
    name: 'Water',
    description: ''
  },
  {
    club_id: 5,
    name: 'Yerba Buena Room',
    description: ''
  },
  {
    club_id: 4,
    name: 'Wood',
    description: ''
  },
  {
    club_id: 4,
    name: 'Earth',
    description: ''
  },
  {
    club_id: 1,
    name: 'Loft',
    description: ''
  },
  {
    club_id: 2,
    name: 'Pool',
    description: ''
  },
  {
    club_id: 2,
    name: 'Outdoors',
    description: ''
  },
  {
    club_id: 6,
    name: 'Pilates',
    description: ''
  },
  {
    club_id: 7,
    name: 'Diamond',
    description: 'REV Studio'
  },
  {
    club_id: 7,
    name: 'Ruby',
    description: 'GroupEx'
  },
  {
    club_id: 7,
    name: 'Sapphire',
    description: 'Mind Body'
  },
  {
    club_id: 7,
    name: 'Emerald',
    description: 'Functional Training'
  },
  {
    club_id: 7,
    name: 'Topaz',
    description: 'Pilates'
  },
  {
    club_id: 7,
    name: 'Amethyst',
    description: 'Duet'
  },
  {
    club_id: 2,
    name: 'Pilates',
    description: ''
  },
  {
    club_id: 1,
    name: 'Roofdeck',
    description: ''
  }]
)

categories = Category.create([
  { name: 'Cardiovascular/Conditioning' },
  { name: 'Mind Body' },
  { name: 'REV' },
  { name: 'Martial Arts/Boxing' },
  { name: 'Splash' },
  { name: 'Dance' }
])