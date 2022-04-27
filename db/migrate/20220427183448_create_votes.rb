class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.bigint :post_id
      t.boolean :posted, default: false

      t.timestamps
    end
  end
end
