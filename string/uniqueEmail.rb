# @param {String[]} emails
# @return {Integer}
require 'set'
def num_unique_emails(emails)
	email_seen = Set.new
	emails.each do |email|
		local = email.include?("+") ? email[0...(email.index("+"))] : email[0...(email.index("@"))]
		local.delete!(".")
		domain = email[email.index("@")..-1]
		email_seen << local + domain
		end
	
	
	return email_seen.length


    
end

emails = ["su.z+y@gmail.com", "su.z+y@gmail.com"]
puts num_unique_emails(emails)
