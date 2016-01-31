class AddPanoramioRankToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :panoramio_rank, :integer
  end
end
