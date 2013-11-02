class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :opinion
      t.references :votable, polymorphic: true
      t.timestamps
    end
  end
end
