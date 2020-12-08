class PagesController < ApplicationController
  def mentionslegales
  end

  def send_formulaire
    ContactMailerJob.perform_async(params[:message], params[:email])
     flash[:notice] = "Votre message a bien été envoyé !"
     redirect_back(fallback_location: root_path) # les messages flash Rails ne s'affichent qu'après rechargement de la page·
  end
end
