describe BetterToolbar do
  describe "#create" do
    it "returns a toolbar" do
      result = BetterToolbar.create
      result.class.should.equal UIToolbar
    end

    it "can specify the items to be created" do
      target = Object.new
      image = UIImage.imageNamed("Default-568h")

      result = BetterToolbar.create({
        items: [
          { title: "Item 1", target: target, action: "item_pressed:" },
          { image: image, target: target, action: "item_pressed:" }
        ]
      })

      result.items.count.should.equal 2

      result.items[0].title.should.equal "Item 1"
      result.items[0].target.should.equal target
      result.items[0].action.should.equal :"item_pressed:"

      result.items[1].image.should.equal image
      result.items[1].target.should.equal target
      result.items[1].action.should.equal :"item_pressed:"
    end

    it "can have defaults for the items" do
      default_target = Object.new
      custom_target = Object.new
      image = UIImage.imageNamed("Default-568h")

      result = BetterToolbar.create({
        target: default_target,
        action: "default_action:",
        items: [
          { title: "Item 1", action: "custom_action:" },
          { image: image, target: custom_target }
        ]
      })

      result.items[0].target.should.equal default_target
      result.items[0].action.should.equal :"custom_action:"

      result.items[1].target.should.equal custom_target
      result.items[1].action.should.equal :"default_action:"
    end
  end
end
