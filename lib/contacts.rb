class Contact
  @@list = []
  @@counter = 1

  attr_accessor :first_name, :last_name, :job_title, :company, :contact_type, :id, :email

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @email = attributes.fetch(:email)
    @id = @@counter
    @@counter = @@counter + 1
  end

  def self.all()
   @@list.sort_by { |contact| [contact.last_name, contact.first_name]}
  end

  def save()
    @@list.push(self)
  end

  def self.find(id)
   contact_id = id.to_i()
   @@list.each do |contact|
     if contact.id == contact_id
       return contact
     end
   end
 end


end
