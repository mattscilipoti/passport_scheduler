module ZurbFoundationHelper
  def top_bar_component(left_contents, right_contents=nil, title_contents=nil)
    content_tag('div', class: "top-bar") do

      left_tag = content_tag('div', class: "top-bar-left") do
        left_contents
      end
      nav_links = left_tag

      if right_contents.present?
        right_tag = content_tag('div', class: "top-bar-right") do
          right_contents
        end
        nav_links += right_tag
      end

      if title_contents.present?
        title_tag = content_tag('div', class: "top-bar-title") do
          title_contents
        end

        title_tag + content_tag('div') do
          nav_links
        end
      else
        nav_links
      end
    end
  end
end
