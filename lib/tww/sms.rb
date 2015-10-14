module Tww
  class Sms
    include Base

    attr_accessor :id_sms, :message, :cel

    def initialize(id_sms, message, cel)
      @id_sms    = id_sms
      @message   = message
      @cel       = cel
    end

    def forward
      send_message(@id_sms, @message, @cel)
    end
  end
end