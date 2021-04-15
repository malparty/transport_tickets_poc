class PurchaseController < ApplicationController
    def index
        # restore from session or create new
        # sample code is here to setup tests only
        unless params[:error]
            email = 'clean@email.com'
        else
            email = 'bademail'
        end

        @purchase = Purchase.new
        unless @purchase.setAndValidateEmail(email) 
            @errorMsg = 'Cannot validate email format'
        end

    end
end
