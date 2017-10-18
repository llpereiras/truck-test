class ContactService
  def self.save(contact)
    contact.delete('type')
    contact.delete('body_type')
    Contact.create(contact)
  end
end