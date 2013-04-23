class AsciiTableCreate < ActiveRecord::Migration
  def change
    create_table :ascii_url_holders do |t|
      t.string :url
      t.timestamps
    end
  end
end
