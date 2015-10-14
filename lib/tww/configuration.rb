module TWW
  class Configuration
    attr_accessor :numUser, :password

    def initialize
      @numUser  = ''
      @password     = ''
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end

end