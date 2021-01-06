class ContactMailer < ApplicationMailer
  def contact(message, email, phone, firstname, lastname, postcode, nature, avancement, budget)
    @message = message
    @email = email
    @phone = phone
    @firstname = firstname
    @lastname = lastname
    @postcode = postcode
    @nature = nature
    @avancement = avancement
    @budget = budget

    # l'adresse ci-dessous est la seule indiquant le destinataire (l'adresse à laquelle le mail sera envoyé)
    mail(to: 'fdelagournerie@gmail.com', subject: 'Nouveau message depuis le formulaire de contact sur FDLG-COURTIER')
  end
end
