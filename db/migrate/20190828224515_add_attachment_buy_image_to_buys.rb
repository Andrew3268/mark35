class AddAttachmentBuyImageToBuys < ActiveRecord::Migration[5.1]
  def self.up
    change_table :buys do |t|
      t.attachment :buy_image
    end
  end

  def self.down
    remove_attachment :buys, :buy_image
  end
end
