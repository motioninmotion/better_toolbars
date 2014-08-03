module BetterToolbar
  class Item
    def self.create(options)
      item = if options[:title]
        UIBarButtonItem.alloc.initWithTitle(
          options[:title],
          style: UIBarButtonItemStylePlain,
          target: nil,
          action: nil
        )
      else
        UIBarButtonItem.alloc.initWithImage(
          options[:image],
          style: UIBarButtonItemStylePlain,
          target: nil,
          action: nil
        )
      end

      item.target = options[:target]
      item.action = options[:action]

      item
    end
  end
end
