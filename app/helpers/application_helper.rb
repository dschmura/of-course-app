module ApplicationHelper
  # Creates skip to content links from an array of id names
  def skip_links
    sanitize @skip_links.collect { |skip_link| link_to "#{skip_link[1]}", "##{skip_link[0]}", class: "skip-to-content-link" }.join(" <span class='sr-only' > or </span>")
  end

    # Returns the full title on a per-page basis.
def page_title
  base_title = (t :site_name)
  if @page_title.nil?
    "#{params[:controller].capitalize} | " + base_title
  else
    "#{@page_title} | #{base_title}"
  end
end
  
end
