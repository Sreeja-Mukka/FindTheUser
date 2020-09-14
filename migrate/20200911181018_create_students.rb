class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :fullname
      t.string :emailid
      t.date :dob
      t.string :telnp
      t.string :fathername
      t.string :gender
      t.string :bloodgroup
      t.string :schoolname
      t.integer :yearofpass
      t.url :imageurl

      t.timestamps
    end

    def name
      fullname=fname+mname+lname
    end
  end
end
