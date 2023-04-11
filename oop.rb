class ApiConnector
    # getters and setters
    attr_accessor :title, :description, :url

    # initializer method
    def initialize(title:, description:, url: url = "google.com")
        @title = title
        @description = description
        @url = url
    end

    def api_logger
        puts "...api logger"
    end

    private
        # instance method
        def testing_initializers
            puts @title
            puts @description
            puts @url
        end
end


class SmsConnector < ApiConnector
    # instance method
    def send_sms
        puts "sending sms"
        #`curl -X POST -d "notification[title]=#{@title}" -d "notification[url]=http://edutechional-resty.herokuapp.com/posts/1" #{@url}`
    end
end


class MailConnector < ApiConnector
    # instance method
    def send_mail
        puts "sending email"
    end

    # polimorphism
    def api_logger
        super
        puts "......mail logger"
    end
end


sms = SmsConnector.new(title: "My Title", description: "My cool description", url: "http://edutechional-smsy.herokuapp.com/notifications")
sms.send_sms
sms.api_logger

email = MailConnector.new(title: "My Title", description: "My cool description", url: "yahoo.com")
#email.testing_initializers
email.send_mail
email.api_logger

