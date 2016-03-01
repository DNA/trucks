module ApplicationHelper

  def page_title(separator: '|', use_html: true)
    title = t("#{controller_name}.title.#{action_name}", default: '')
    subtitle = t("#{controller_name}.subtitle.#{action_name}", default: '')

    return t('layout.site_name') if title.empty?
    return title if subtitle.empty?

    if use_html
      "#{title} " + content_tag(:small, subtitle)
    else
      "#{title} #{separator} #{subtitle}"
    end
  end

  def navbar_link(path, name, controller)
    if current_page? controller: controller, action: action_name
      li_options = { class: 'active' }
      sr_tag = content_tag(:span, '(current)', class: 'sr-only')
    end

    content_tag(:li, link_to("#{name} #{sr_tag}".html_safe, path), li_options)
  end
end
