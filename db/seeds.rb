# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# c = Category.create(name:'sello')

# c1 = Category.create(name:'timbre')


# Product.create(name:'9011',stock: 100 , photo: '9011.jpg', precio: 6800,category: c )

# Product.create(name:'9011',stock: 100 , photo: '9011.jpg', precio: 6800,category: Category.find_by_name('sello') )



Product.destroy_all
Category.destroy_all




c1 = Category.create(name:'sello')
c2 = Category.create(name:'Bolsillo')
c3 = Category.create(name:'madera')
c4 = Category.create(name:'Fechador')
c5 = Category.create(name:'Redondo')


Product.create(name:'9011',stock: 100 , photo: '9011.jpg', precio: 6800,category: c1 )
Product.create(name:'9012',stock: 100 , photo: '9012.jpg', precio: 7400,category: c1 )
Product.create(name:'9411',stock: 100 , photo: '9411.jpg', precio: 8400,category: c2 )
Product.create(name:'R30D',stock: 100 , photo: 'r30d.jpg', precio: 15500,category: c5 )
