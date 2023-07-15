categories = ['哺乳類', '鳥類', '爬虫類', '両生類', 'その他']
categories.each do |category| 
    Category.create(name: category)
end 