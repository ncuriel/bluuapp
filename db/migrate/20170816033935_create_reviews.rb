class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :id
      t.boolean :currently_work
      t.integer :length_months
      t.boolean :full_time
      t.string :position_title
      t.string :manager
      t.integer :insurance
      t.integer :sick_days
      t.integer :vacation_days
      t.integer :hourly_pay
      t.integer :average_hours
      t.string :advancement
      t.string :considered
      t.string :support
      t.boolean :recommend

      t.timestamps
    end
  end
end
