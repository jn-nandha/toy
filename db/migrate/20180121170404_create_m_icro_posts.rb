class CreateMIcroPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :m_icro_posts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
