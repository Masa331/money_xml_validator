require 'nokogiri'

module MoneyXmlValidator
  def self.validate(utf_source)
    gem_root = File.expand_path("../..", __FILE__)

    path = "#{gem_root}/lib/money_xml_validator/money_xsd/schemas/_Document.xsd"
    io = File.open(path)
    schema = Nokogiri::XML::Schema(io)

    doc = Nokogiri::XML(utf_source)


    errors = schema.validate(doc)

    errors
  end
end
