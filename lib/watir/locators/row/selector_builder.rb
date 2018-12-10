module Watir
  module Locators
    class Row
      class SelectorBuilder < Element::SelectorBuilder
        def build_wd_selector(selector)
          scope_tag_name = @query_scope.selector[:tag_name] || @query_scope.tag_name
          Kernel.const_get("#{self.class.name}::XPath").new.build(selector, scope_tag_name)
        end
      end
    end
  end
end
