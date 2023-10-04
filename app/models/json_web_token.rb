class JsonWebToken
    def self.encode(payload)
        expiration = 60.minutes.from.now
        JWT.encode payload, Rails.application.secrets.secret_key_base
    end
 
    def self.decode(token)
        JWT.decode(token, Rails.application.secrets.secret_key_base).first 
    end

end