describe BetterToolbar do
  describe "#create" do
    it "returns a toolbar" do
      result = BetterToolbar.create
      result.class.should.equal UIToolbar
    end
  end
end
