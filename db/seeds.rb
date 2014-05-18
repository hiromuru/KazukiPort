# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Author.create(:user_id => 'kazuaki', :name => '鞍谷 一樹')
Exhib.create(:title => 'くらたの展示',:start_date => '2014-05-10',:end_date => '2014-05-21',:gallery => 'かすきん家',:gallery_url => 'http://oriori.index',:adress => '相原',:desc => 'てきとーにやってます')
Sculp.create(:title => 'one',:pic_id => '01',:wide => '100',:depth => '100',:high => '100',:madein =>'2010-04-01')
Sculp.create(:title => 'two',:pic_id => '02',:wide => '20',:depth => '20',:high => '20',:madein =>'2009-04-01')
Sculp.create(:title => 'three',:pic_id => '03',:wide => '1',:depth => '5',:high => '6',:madein =>'2000-04-01')