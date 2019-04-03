class ChangeStringForTitle < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.change :title, :text 
    end
  end

  def self.down
    change_table :posts do |t|
      t.change :title, :string
    end
  end
end
