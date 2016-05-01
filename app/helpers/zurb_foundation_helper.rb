module ZurbFoundationHelper
  def top_bar_component(left_template_name, right_template_name = nil, title_template_name = nil)
    content_tag('div', class: "top-bar") do

      left_tag = content_tag('div', class: "top-bar-left") do
        render left_template_name
      end
      nav_links = left_tag

      if right_template_name.present?
        right_tag = content_tag('div', class: "top-bar-right") do
          render right_template_name
        end
        nav_links += right_tag
      end

      if title_template_name.present?
        title_tag = content_tag('div', class: "top-bar-title") do
          render title_template_name
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
