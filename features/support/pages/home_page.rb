require_relative 'side_menu_panel'

class HomePage
  include PageObject
  include SideMenuPanel


  divs(:name, :class => 'name')
  buttons(:view_detail, :value => 'View Details')

  page_url("http://puppies.herokuapp.com")

  def select_puppy(name)
    index = index_for(name)
    button_element(:value => 'View Details', :index => index).click
  end

  #def select_puppy_number (num)
  #  button_element(:value => 'View Details', :index => num - 1).click
  #end

  private
  def index_for(name)
    name_elements.find_index { |thediv| thediv.text == name}
  end
end