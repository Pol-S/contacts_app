class Api::ContactsController < ApplicationController
  def index
    @all_dudes = Contact.all
    render "index.json.jb"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.json.jb"
  end

  def post
    @contact = Contact.new({
      first_name: "Kyle",
      last_name: "Ross",
      email: "kross@example.com",
      phone_number: "456 789-1234",
    })
    @contact.save

    render "show.json.jb"
  end
end
