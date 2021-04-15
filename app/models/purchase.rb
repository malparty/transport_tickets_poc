class Purchase < ApplicationRecord  
    attr_reader :isPaid, :email
    def initialize(x)
        @isPaid = false
    end

    def setAndValidateEmail(emailToValidate)
        if emailToValidate =~ URI::MailTo::EMAIL_REGEXP
            @email = emailToValidate
            true
        else
            false
        end
    end

end
