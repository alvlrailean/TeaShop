class CreateProducts < ActiveRecord::Migration[5.1]
  def change
  	create_table :products do |tab|
  		tab.text :title
  		tab.text :description
  		tab.text :link_to_pic
  		tab.decimal :price

  		tab.timestamp
	end
	newTea = Product.new
	newTea.title = ' Pu Erh'
	newTea.price =  78 
	newTea.description = '«Красный» китайский чай (полностью ферментированный) с нежным, слегка сладковатым привкусом земли. Напиток имеет глубокий красный цвет.'
	newTea.link_to_pic = 'http://www.ceai.md/uploads/4007.jpg'
	newTea.save

	newTea = Product.new
	newTea.title = 'Ceylon Pettiagalla'
	newTea.price = 80 
	newTea.description = 'Этот чай производится в районе Димбулы, округ Балангода. Чай имеет тёмно-красный цвет. '
	newTea.link_to_pic = 'http://www.ceai.md/uploads/3001.jpg'
	newTea.save

	newTea = Product.new
	newTea.title = 'Гавайский Коктейль'
	newTea.price = 74
	newTea.description = 'Фруктовый чай на основе гибискуса, шиповника, кусочками ананаса, корочки апельсина, кусочками папайи и изюма,  ароматизирован натуральными маслами.'
	newTea.link_to_pic = 'http://www.ceai.md/uploads/7000.jpg'
	newTea.save

	newTea = Product.new
	newTea.title = 'Мате Лимон'
	newTea.price = 66
	newTea.description = 'Мате с добавлением корочки апельсина, лимонника, ароматизированый натуральными маслами.'
	newTea.link_to_pic = 'http://www.ceai.md/uploads/9000.jpg'
	newTea.save

	newTea = Product.new
	newTea.title = 'Chao Qing'
	newTea.price = 70
	newTea.description = 'Этот зеленый чай собирают в Китае в провинции Хао Кинг. При заваривании дает настой светло золотистого цвета со сладковатым приятным вкусом.'
	newTea.link_to_pic = 'http://www.ceai.md/uploads/4103.jpg'
	newTea.save

	newTea = Product.new
	newTea.title = 'Morning Star'
	newTea.price = 78
	newTea.description = 'Травяная смесь с добавлением мяты, шиповника, листьев ежевики и малины, лепестков календулы, мальвы и розы, сушеница.'
	newTea.link_to_pic = 'http://www.ceai.md/uploads/9002.jpg'
	newTea.save



	


  end
 end
