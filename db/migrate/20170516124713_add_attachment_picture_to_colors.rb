class AddAttachmentPictureToColors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :colors do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :colors, :picture
  end
end
