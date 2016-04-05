class AddFnameToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :fname, :string
    add_column :searches, :lname, :string
  end
end
