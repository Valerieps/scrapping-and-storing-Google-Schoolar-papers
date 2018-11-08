import scrapy


class scholarSpider(scrapy.Spider):
    name = "papers"
    start_urls = ['https://scholar.google.com.br/citations?user=IStCGaoAAAAJ&hl=pt-BR&oi=ao']

    def parse(self, response):
        # all_papers = response.css('tbody.gsc_a_b')
        # current_paper = all_papers[0]
        for i in range(20):
            yield{
                # current_paper
                'title': response.css('a.gsc_a_at::text')[i].extract(),
                'url': response.css('a.gsc_a_at::href')[i].extract(),
                'author': response.css('div.gs_gray::text')[i+0].extract(),
                'event': response.css('div.gs_gray::text')[i+1].extract(),
                'year' : response.css('span.gsc_a_h::text')[i].extract()
            }



        # for quote in response.css('div.gsc_rsb_s'):
        # for artigo in response.tbody('tbody.gsc_a_tr'):
        #     yield {
        #         'title': artigo.a('a.gsc_a_at::text').extract(),
        #         # 'year': artigo.css('span.gsc_g_t::text').extract(),
        #         # 'citation': artigo.css('span.gsc_g_al::text').extract(),
        #         # 'author': quote.xpath('span/small/text()').extract_first(),
        #     }

        # for name in response.css('title'):
        #     yield {
        #         'name': name.css('title::text').extract(),
        #     }
        # for quote in response.css('div.gsc_rsb_s'):
        #     yield {
        #         'title': quote.css('a.gsc_a_at::text').extract,
        #         'year': quote.css('span.gsc_g_t::text').extract(),
        #         'citation': quote.css('span.gsc_g_al::text').extract(),
        #         # 'author': quote.xpath('span/small/text()').extract_first(),
        #     }
        #
        # next_page = response.css('li a::attr("href")').extract_first()
        # # next_page2 = response.css('li a::attr("href")').extract_first()
        # if next_page is not None:
        #     next_page = response.urljoin(next_page)
        #     yield scrapy.Request(next_page, callback=self.parse)