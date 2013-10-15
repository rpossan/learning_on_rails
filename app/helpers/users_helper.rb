module UsersHelper
  
  def set_order(field)
    (params[:order].present? ? (params[:order] == field ? "#{field} DESC" : field) : field)
  end
end
