module BetterToolbar
  describe Item do
    it "is easier to create than an UIBarButtonItem with a title" do
      item = Item.create(title: "Hello")
      item.title.should.equal "Hello"
    end

    it "is easier to create than a UIBarButtonItem with an image" do
      image = UIImage.imageNamed("Default-568h")
      item = Item.create(image: image)
      item.image.should.equal image
    end

    it "can have a target and action assigned to a title item" do
      target = Object.new
      item = Item.create(title: "Hello", target: target, action: 'test:')

      item.target.should.equal target
      item.action.should.equal :"test:"
    end

    it "can have a target and action assigned to a image item" do
      target = Object.new
      image = UIImage.imageNamed("Default-568h")
      item = Item.create(image: image, target: target, action: 'test:')

      item.target.should.equal target
      item.action.should.equal :"test:"
    end
  end
end
