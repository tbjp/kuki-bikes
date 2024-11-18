class AddImgToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :bike_img, :string
  end
end
