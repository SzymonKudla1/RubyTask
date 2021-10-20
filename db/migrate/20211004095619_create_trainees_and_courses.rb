class CreateTraineesAndCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :trainees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.date :birthdate, null: false
      t.boolean :active, null: false, default: true
      t.timestamps
    end
    
    create_table :courses do |t|
      t.string :title, null: false
      t.timestamps
    end

    create_table :trainee_courses do |t|
      t.references :trainee, foreign_key: true
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
