html = Nokogiri.HTML(content)

price = html.at('span[itemprop=price]').text
# raise 'something happend!' if price.strip == ''


outputs << {
    name: page['vars']['name'],
    url: page['url'],
    price: price
}