class PagesController < ApplicationController
  def mentionslegales
  end

  def home
  end

  def send_contact
    ContactMailerJob.perform_async(params[:message], params[:email], params[:phone], params[:firstname], params[:lastname], params[:postcode], params[:nature], params[:avancement], params[:budget])
    # redirect_back(fallback_location: root_path) # les messages flash Rails ne s'affichent qu'après rechargement de la page·
    redirect_to root_path
    flash[:notice] = "Votre message a bien été envoyé !"
  end
end
