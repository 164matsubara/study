class InquiryMailer < ApplicationMailer
    default from: ENV['MAILADDRESS']
    default to: ENV['MAILADDRESS']
    
    def received_email(inquiry)
        @inquiry = inquiry
        mail(subject: 'You have got Inquiry form web-site')
    end
    
end
