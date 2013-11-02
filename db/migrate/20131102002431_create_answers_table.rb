class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body
      t.belongs_to :user
      t.timestamps
    end
  end
end
