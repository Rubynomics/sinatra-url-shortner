URLS = ['http://google.com',
        'http://reddit.com',
        'http://yahoo.com',
        'http://aintitcool.com',
        'http://nytimes.com',
        'http://npr.org',
        'http://pbs.org',
        'http://devbootcamp.com',
        'http://wikipedia.org']

URLS.each do |url|
  Url.create!(url: url)
end
