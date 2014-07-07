# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SubCategory.delete_all
Category.delete_all

category = Category.create({ cat_name: 'Leaking Test', cat_description: 'Leaking Test'})
category.sub_categories << SubCategory.create(name: 'Leaking Test Sub 1')
category.sub_categories << SubCategory.create(name: 'Leaking Test Sub 2')
category.sub_categories << SubCategory.create(name: 'Leaking Test Sub 3')

category = Category.create({ cat_name: 'Welding', cat_description: 'Welding'})
category.sub_categories << SubCategory.create(name: 'Welding Sub 1')
category.sub_categories << SubCategory.create(name: 'Welding Sub 2')
category.sub_categories << SubCategory.create(name: 'Welding Sub 3')

category = Category.create({ cat_name: 'Pick and Place', cat_description: 'Pick and Place'})
category.sub_categories << SubCategory.create(name: 'Pick and Place Sub 1')
category.sub_categories << SubCategory.create(name: 'Pick and Place Sub 2')
category.sub_categories << SubCategory.create(name: 'Pick and Place Sub 3')

category = Category.create({ cat_name: 'Control', cat_description: 'Control'})
category.sub_categories << SubCategory.create(name: 'Control Sub 1')
category.sub_categories << SubCategory.create(name: 'Control Sub 2')
category.sub_categories << SubCategory.create(name: 'Control Sub 3')

Link.delete_all
Link.create([
                { link_name: 'Documentation', link_url: 'http://where.is.my.documentation'},
                { link_name: '3D Preview', link_url: 'http://open.my.3d.com'},
                { link_name: 'Others', link_url: 'http://www.otherthingtodo.com'}
            ])

Equipment.delete_all
Equipment.create([
                     { eq_name: 'Ultrasonic Welding Equipment', eq_number: 'T00.EQ34.00', eq_description: 'This equipment works with ultrasonic welding !', :categories => Category.where("cat_name in ('Welding')"), :links => Link.where("link_name in ('Documentation')"), :sub_categories => SubCategory.where("name in ('Welding Sub 2')")},
                     { eq_name: 'Pick and Place Equipment', eq_number: 'T01.EQ30.00', eq_description: 'This equipment works with a Pick and Place system !', :categories => Category.where("cat_name in ('Pick and Place')"), :links => Link.where("link_name in ('Documentation')"), :sub_categories => SubCategory.where("name in ('Pick and Place Sub 2')")},
                     { eq_name: 'Multiple Control Equipment', eq_number: 'T25.EQ47.01', eq_description: 'This equipment controls multiple nests at a time !', :categories => Category.where("cat_name in ('Control')"), :links => Link.where("link_name in ('Documentation')"), :sub_categories => SubCategory.where("name in ('Control Sub 3')")},
                     { eq_name: 'Leaking Test Equipment', eq_number: 'T55.EQ48.02', eq_description: 'This equipment controls air Leak !', :categories => Category.where("cat_name in ('Leaking Test')"), :links => Link.where("link_name in ('Documentation')"), :sub_categories => SubCategory.where("name in ('Leaking Test Sub 2')")}
                 ])

User.delete_all
User.create([
                { user_last_name: 'Pinto', user_first_name: 'Anthony', user_e_mail: 'anthony.pinto@my-email.com', user_access_rights: 'admin'},
                { user_last_name: 'Walther', user_first_name: 'Raphael', user_e_mail: 'raphael.walther@my-email.com', user_access_rights: 'admin'},
                { user_last_name: 'James', user_first_name: 'Brown', user_e_mail: 'james.brown@mymusic.com', user_access_rights: 'viewer'},
                { user_last_name: 'Jimmy', user_first_name: 'Hendrix', user_e_mail: 'jim.hen@helloworld.com', user_access_rights: 'contributor'}
            ])



