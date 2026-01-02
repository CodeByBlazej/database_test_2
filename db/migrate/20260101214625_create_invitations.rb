class CreateInvitations < ActiveRecord::Migration[8.0]
  def change
    create_table :invitations do |t|
      t.references :party, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
