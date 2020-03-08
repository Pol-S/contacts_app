class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.find_by(id: params[:id])

    render "show.json.jb"
  end

  def index
    @all_dudes = Contact.all
    # index = 0
    # while index < @all_dudes.length
    #   @current_trick = @all_dudes[index]
    render "index.json.jb"
    # end
  end
end
