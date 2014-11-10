class Product < ActiveRecord::Base

  attr_accessible  :nazov, :farba, :velkost, :mnozstvo

end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end

  def self.xml_parser
    xml_string = open("#{Rails.root}/abc.xml").read
    root = Nokogiri::XML(xml_string)
    products = root.xpath("products/product")
    products.each do |product|
      product_hash = {
          nazov:  product.at_xpath("name").text,
          farba: product.at_xpath("farba").text,
          velkost: product.at_xpath("velkost").text,
          mnozstvo: product.at_xpath("mnozstvo").text,
      }
      product_record = Product.create!(product_hash)
      product_record.save

    end
  end
end
