module ApplicationHelper

  def flash_class(level)
      case level
          when "notice" then "alert alert-success"
          when "success" then "alert alert-success"
          when "error" then "alert alert-error"
          when "alert" then "alert alert-error"
      end
  end

  def full_title(page_title = '')
    base_title = "Le Rat Curieux"
    if page_title.empty?
      base_title
    else
      page_title + " - " + base_title  
    end
  end

end
