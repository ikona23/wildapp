class HomeController < ApplicationController
  def index
<<<<<<< Updated upstream

=======
    @time = Time.now
  end

  def import
    f = File.open("#{Rails.root}/public/feed.xml")
    @doc = Nokogiri::XML(f)
    f.close

    ignore_list = [] # ignore list

    @doc.xpath("/*/product[not(name = following-sibling::product/name)]").each do |node|
      if !ignore_list.include? node.xpath("./programName").inner_text.strip
        Product.create(:name => clean_field(node.xpath("./name").inner_text).downcase,
                       :description => clean_field(node.xpath("./description").inner_text),
                       :brand => Brand.find_or_create_by_name(clean_field_key(node.xpath("./brand").inner_text).downcase),
                       :merchant => Merchant.find_or_create_by_name(clean_field_key(node.xpath("./programName").inner_text).downcase),
                       :image => node.xpath("./imageUrl").inner_text.strip,
                       :link => node.xpath("./productUrl").inner_text.strip,
                       :category => Category.find_or_create_by_name(clean_field_key(node.xpath("./CategoryName").inner_text).downcase),
                       :price => "£" + node.xpath("./price").inner_text.strip)
        print clean_field(node.xpath("./name").inner_text).downcase + "\n"
      end
    end
>>>>>>> Stashed changes
  end
end
