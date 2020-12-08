class ContactMailer < ApplicationMailer
  def contact(message, email)
    @message = message
    @email = email
    mail(to: 'a.b.m.mabire@gmail.com', subject: 'Nouveau message depuis le formulaire de contact sur FDLG-COURTIER')
  end
end
