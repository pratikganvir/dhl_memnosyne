module DhlCall
  require 'uri'
  require 'net/http'
  require 'net/https'
  require 'openssl'

  # This method gets called by main class DHLMemnosyne.
  # It makes actual http request to get the shipment details.
  def self.response(tracking_number,dhl_id,dhl_password)
    uri            = URI.parse 'HTTPS://eCommerce.airborne.com/ApiLanding.asp'
    http           = Net::HTTP.new uri.host, uri.port
    http.use_ssl, http.verify_mode = use_ssl?(uri)
    request = dhl_request(tracking_number,dhl_id,dhl_password)
    return http.post(uri.path, request).body
  end

  def self.dhl_request(tracking_number,dhl_id,dhl_password)
    require 'rubygems'
    require 'nokogiri'
    xml_request = Nokogiri::XML::Builder.new do |xml|
        xml.ECommerce('action' => 'Request', 'version' => '1.1') {
          xml.Requestor {
            xml.ID_ dhl_id
            xml.Password_ dhl_password
          }
          xml.Track('action' => 'Get', 'version' => '1.0'){
            xml.Shipment{
              xml.TrackingNbr_ tracking_number
            }
          }
        }
    end
    xml_request.to_xml
  end

  def self.use_ssl?(uri)
    uri.port == 443 ?
    (return true, OpenSSL::SSL::VERIFY_NONE) : (return false, OpenSSL::SSL::VERIFY_NONE)
  end
end
