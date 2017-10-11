class ContactService
  def self.save(contact)
    Contact.create(contact)
  end
end