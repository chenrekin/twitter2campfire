CAMPFIRE_SUBDOMAIN = 'aranyx'
CAMPFIRE_EMAIL = 'chenrekin@gmail.com'
CAMPFIRE_PASSWORD = 'qwert@789'
CAMPFIRE_ROOM = 'AZAL Main Conference Room'
FEED_URL = 'http://search.twitter.com/search.atom?q=+aranyx+OR+4crossley+OR+billyharding+OR+vorak'

require 'twitter2campfire'
campfire = Tinder::Campfire.new CAMPFIRE_SUBDOMAIN
campfire.login CAMPFIRE_EMAIL, CAMPFIRE_PASSWORD
t = Twitter2Campfire.new(FEED_URL, campfire, CAMPFIRE_ROOM)
t.publish_entries