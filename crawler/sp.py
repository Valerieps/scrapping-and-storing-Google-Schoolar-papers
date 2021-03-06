import scrapy


class scholarSpider(scrapy.Spider):
    name = "papers"
    start_urls = ['https://scholar.google.com.br/citations?user=IStCGaoAAAAJ&hl=pt-BR&oi=ao']

    def parse(self, response):
        for name in response.css('title'):
            yield {
                'name': name.css('title::text').extract(),
            }
        for quote in response.css('div.gsc_rsb_s'):
            yield {
                'year': quote.css('span.gsc_g_t::text').extract(),
                'citation': quote.css('span.gsc_g_al::text').extract(),
                # 'author': quote.xpath('span/small/text()').extract_first(),
            }

        next_page = response.css('li a::attr("href")').extract_first()
        # next_page2 = response.css('li a::attr("href")').extract_first()
        if next_page is not None:
            next_page = response.urljoin(next_page)
            yield scrapy.Request(next_page, callback=self.parse)