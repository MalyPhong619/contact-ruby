require('rspec')
require('./app')

describe("Contact") do
  it("makes a new contact") do
    friend = Contact.new({:first_name=>"chris", :last_name=>"cahill", :job_title=>"worker", :company=>"company", :contact_type=>"buddy"})
    expect(friend.first_name()).to(eq("chris"))
  end
end
