class ContactService
  def self.save(contact)
    return false unless contact
    contact.delete('type') if contact['type']
    contact.delete('body_type') if contact['body_type']
    Contact.create(contact)
  end
end