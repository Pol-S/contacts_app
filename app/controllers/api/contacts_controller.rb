class Api::ContactsController < ApplicationController
  def first_contact
    @first_dude = Contact.first
    render "first_contact.json.jb"
  end

  def all_contact
    @all_dudes = Contact.all
    render "all_contacts.json.jb"
  end
end
