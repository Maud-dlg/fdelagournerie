class ContactMailerJob
  include SuckerPunch::Job

  def perform(message, email, phone, firstname, postcode, lastname, nature, avancement, budget)
    ContactMailer.contact(message, email, phone, firstname, postcode, lastname, nature, avancement, budget).deliver
  end
end
