module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def title
    base_title = "SISKA+"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def new_ico
    image_tag("new.png", :alt => "new", :title => "New")
  end
  
  def view_ico
    image_tag("view.png", :alt => "view", :title => "View")
  end
  
  def edit_ico
    image_tag("edit.png", :alt => "edit", :title => "Edit")
  end
  
  def delete_ico
    image_tag("delete.png", :alt => "delete", :title => "delete")
  end
  
  def back_ico
    image_tag("back.png", :alt => "back", :title => "Back")
  end
  
  def alert_ico
    image_tag("alert.png", :alt => "alert", :title => "Alert")
  end
  
  def print_ico
    image_tag("print.png", :alt => "print", :title => "Print")
  end
end
