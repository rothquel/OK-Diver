module ApplicationHelper
  def want_sidebar
    # raise
    current_page?('/create-log') || current_page?('/logs/new') || current_page?('/dive-sites/new', check_parameters: false)
  end
end
