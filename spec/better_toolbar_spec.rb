describe BetterToolbar do
  describe "#create" do
    it "returns a toolbar" do
      result = BetterToolbar.create
      result.class.should.equal UIToolbar
    end

    it "can have items specified" do
      target = Object.new
      image = UIImage.imageNamed("Default-568h")
      result = BetterToolbar.create({
        items: [
          { title: "Test 1", target: target, action: "item_pressed:" },
          { title: "Test 2", target: target, action: "item_pressed:" },
          { image: image, target: target, action: "image_pressed:" }
        ]
      })
      result.items.count.should.equal 3

      result.items[0].title.should.equal "Test 1"
      result.items[1].title.should.equal "Test 2"
      result.items[2].image.should.equal image

      result.items[0].target.should.equal target
      result.items[1].target.should.equal target
      result.items[2].target.should.equal target

      result.items[0].action.should.equal :"item_pressed:"
      result.items[1].action.should.equal :"item_pressed:"
      result.items[2].action.should.equal :"image_pressed:"
    end

    it "can have defaults for the bar items" do
      default_target = Object.new
      custom_target = Object.new

      result = BetterToolbar.create({
        target: default_target,
        action: "default_action:",
        items: [
          { title: "Test 1", action: "item_pressed:" },
          { title: "Test 2", target: custom_target, }
        ]
      })

      result.items[0].target.should.equal default_target
      result.items[1].target.should.equal custom_target

      result.items[0].action.should.equal :"item_pressed:"
      result.items[1].action.should.equal :"default_action:"
    end
  end
end
