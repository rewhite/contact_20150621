class EmailController < ApplicationController

def email_form
end

def email_send
	@email = params[:email]
	@content = params[:content]
	@title = params[:title]

gmail = Gmail.connect("draftysin@gmail.com","gustjr12")
    gmail.deliver do
      to email
      subject title
      text_part do
        body content
      end
end

gmail.logout
end

end
