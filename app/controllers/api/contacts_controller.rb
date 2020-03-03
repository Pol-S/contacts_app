class Api::ContactsController < ApplicationController
  def first_contact
    @first_dude = Contact.first
    render "first_contact.json.jb"
  end

  def all_contact
    @all_dudes = Contact.all
    # index = 0
    # while index < @all_dudes.length
    #   @current_trick = @all_dudes[index]
    render "all_contacts.json.jb"
    # end
  end
end
