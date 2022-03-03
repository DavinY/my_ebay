html = Nokogiri.HTML(content)

price = html.css('.mainPrice')&.text
# raise 'something happend!' if price.strip == ''


outputs << {
    _collection: "product",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}