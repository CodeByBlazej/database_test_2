class AddHostIdToParties < ActiveRecord::Migration[8.0]
  def change
    add_reference :parties, :host, null: false, foreign_key: { to_table: :people }, index: true
  end
end
