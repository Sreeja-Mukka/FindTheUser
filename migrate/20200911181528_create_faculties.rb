class CreateFaculties < ActiveRecord::Migration[6.0]
  def change
    create_table :faculties do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :fullname
      t.string :emailid
      t.date :dob
      t.string :telnp
      t.string :gender
      t.string :qualification
      t.integer :workexp
      t.string :specialization

      t.timestamps
    end
  end
end
