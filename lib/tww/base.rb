# encoding: UTF-8
require 'net/http'
require 'uri'

module Tww
  module Base
    URL = 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS'

    private

    def send_message(id_sms, message, cel)
      Net::HTTP.post_form URI(URL),
        {
          :NumUsu => Tww.configuration.numUser,
          :Senha => Tww.configuration.password,
          :SeuNum => id_sms,
          :Celular => cel,
          :Mensagem => message
        }
    end
  end
end