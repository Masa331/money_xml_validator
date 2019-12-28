# MoneyXmlValidator

Ruby validator for Money S3 XML documents. Takes in Money S3 XML document, validates it against official schema, and returns errors.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'money_xml_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install money_xml_validator

## Usage

Valid document:
```ruby
xml = File.read('valid_invoices.xml')
errors = MoneyXmlValidator.validate(xml)
# => []
```

Invalid document:
```ruby
xml = File.read('invalid_invoices.xml')
errors = MoneyXmlValidator.validate(xml)
# => [#<Nokogiri::XML::SyntaxError: 6:0: ERROR: Element 'nonsense': This element is not expected. Expected is one of ( Doklad, ZpusobUctovani, Storno, Del, GUID, Rada, CisRada, UDoklad, Popis, Vystaveno ).>]
```

## Changelog

### 17.12.2019 - gem v 1.0.0

* update money xsd submodules

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/money_xml_validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
