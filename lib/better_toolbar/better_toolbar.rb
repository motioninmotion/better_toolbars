module BetterToolbar
  def self.create(options = {})
    toolbar = UIToolbar.new
    items = options.fetch(:items, []).map { |i| item_options_to_item(options.merge(i)) }
    toolbar.setItems(items, animated: false)
    toolbar
  end

  private

  def self.item_options_to_item(item_options)
    Item.create(item_options)
  end
end
