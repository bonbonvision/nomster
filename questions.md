Added dependent: :destroy to place model for comments and photos. 

Do I need to add .destroy to @place on line 50 in show.html.erb like in this guide? http://guides.rubyonrails.org/association_basics.html

Does dependent: :destory need to be added to user has_many comments? Probably not, b/c you want the comments to stay even if the user deletes there account right?

Homework:
Do i need to add a new and create method to user model? Is that why the username isn't getting stored?