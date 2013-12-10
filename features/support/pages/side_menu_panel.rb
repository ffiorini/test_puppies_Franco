module SideMenuPanel
  include PageObject

  link(:adopt_puppy, :text => "Adopt a ¨Puppy")
  link(:learn, :text => "Learn")
  link(:animal_shelters, :text => "Animal Shelters")
  link(:classifieds, :text => "Clasifieds")
  link(:message_boards, :text => "Message Boards")
  link(:pet_news, :text => "Pet News")
end