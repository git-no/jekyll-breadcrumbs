require 'jekyll-language-plugin'

module Jekyll
  module LanguagePlugin
    module Tags
      class LanguageIfTag < Liquid::Tag
        def initialize(tag_name, markup, tokens)
          super
        end

        def render(context)
          language = context.registers[:page]['language']
          subset = context.registers[:page]['subset']
          exp = subset + ".breadcrumb"

          language_data = Jekyll::LanguagePlugin::LiquidContext.get_language_data(context)
          str ||= language_data.get(exp, language)
          if str.nil?
            exp = subset + ".title"
            str ||= language_data.get(exp, language)
            raise Liquid::SyntaxError.new("Invalid parameter expression: #{exp}") if str.nil?
          end
          str
        end
      end
    end
  end
end

Liquid::Template.register_tag('tif', Jekyll::LanguagePlugin::Tags::LanguageIfTag)
