class Weather
  def self.call
    ThirdPartyService.call
  end
end

class ThirdPartyService
  def self.call
    # network call
  end
end