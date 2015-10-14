# encoding: UTF-8
require 'net/http'
require 'uri'

module TWW
  module Base
    URL = 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS'

    private

    def send_message(id_sms, message, cel)
      Net::HTTP.post_form URI(URL),
        {
          :NumUsu => TWW.configuration.numUser
          :Senha => TWW.configuration.password
          :SeuNum => id_sms,
          :Celular => cel,
          :Mensagem => message
        }
    end
  end
end