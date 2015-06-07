class AddAttachmentDocumentToGuests < ActiveRecord::Migration
  def self.up
    change_table :guests do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :guests, :document
  end
end
