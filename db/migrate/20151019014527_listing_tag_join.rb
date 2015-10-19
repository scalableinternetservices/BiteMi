class ListingTagJoin < ActiveRecord::Migration
  def self.up
  	create_table 'listings_tags', :id => false do |t|
    	t.column :listing_id, :integer
    	t.column :tag_id, :integer
	end
  end

  def self.down
  	drop_table 'listings_tags'
  end

end
