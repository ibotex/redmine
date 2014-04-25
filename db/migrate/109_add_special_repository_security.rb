class AddSpecialRepositorySecurity < ActiveRecord::Migration
  def self.down
    remove_column :repositories, :login_method
    remove_column :repositories, :security_token
  end

  def self.up
    add_column :repositories, :login_method, :int, :default => 0, :null => true
    add_column :repositories, :security_token, :string, :limit => 60, :default => "", :null => true
  end
end