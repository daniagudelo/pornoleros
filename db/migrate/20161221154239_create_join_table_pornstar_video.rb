class CreateJoinTablePornstarVideo < ActiveRecord::Migration
  def change
    create_join_table :pornstars, :videos do |t|
      # t.index [:pornstar_id, :video_id]
      # t.index [:video_id, :pornstar_id]
    end
  end
end
