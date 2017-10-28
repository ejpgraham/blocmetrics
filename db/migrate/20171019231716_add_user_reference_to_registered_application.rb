class AddUserReferenceToRegisteredApplication < ActiveRecord::Migration
  def change
    add_reference :registered_applications, :user, index: true, foreign_key: true
  end
end