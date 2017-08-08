require_relative 'drops/breadcrumb_item.rb'

module Jekyll
  module Breadcrumbs
    @@pages_cache = {}
    def self.build_breadcrumb(side, payload)
      drop = ::Drops::BreadcrumbItem

      if side.url == "/"
        then
        payload["breadcrumbs"] = [
          drop.new(side, payload)
        ]
      else
        payload["breadcrumbs"] = []
        pth = side.url.split("/")

        sides = [].concat(side.site.pages).concat(side.site.documents)

        0.upto(pth.size - 1) do |int|
          joined_path = pth[0..int].join("/")

          if @@pages_cache[joined_path] == nil
          then
            @@pages_cache[joined_path] = sides.find { |side_| joined_path == "" && side_.url == "/" || side_.url.chomp("/") == joined_path }
            if @@pages_cache[joined_path] == nil
            then
              @@pages_cache[joined_path] = "nomatch"
            end
          end

          item = @@pages_cache[joined_path]

          payload["breadcrumbs"] << drop.new(item, payload) if item != "nomatch"
        end
      end
    end
  end

  Jekyll::Hooks.register [:pages, :documents], :pre_render do |side, payload|  # documents are collections, and collections include also posts
    Breadcrumbs::build_breadcrumb(side, payload)
  end
end
