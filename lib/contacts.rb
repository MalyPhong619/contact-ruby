class Contact
  @@list = []
  @@counter = 1

  attr_accessor :first_name, :last_name, :job_title, :company, :contact_type, :id

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    # @id = attributes.fetch(:id)
    @id = @@counter
    @@counter = @@counter + 1
  end

  def self.all()
   @@list
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
