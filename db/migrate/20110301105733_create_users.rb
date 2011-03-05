class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
          t.string :username
          t.string :email
          t.string :crypted_password
          t.string :password_salt
          t.string :persistence_token
          t.string :name
          t.string :description
          t.string :city
          t.string :state
          t.string :zip
          t.string :address
          t.string :number_of_children
          t.string :age
          t.string :gender
          t.string :number_of_days
          t.string :number_of_hours
          t.string :max_monthly_budget
          t.string :host
          t.date   :begin_date_for_share
          t.string :hours_needed
          t.string :edu_of_parent_father
          t.string :edu_of_parent_mother
          t.string :already_nanny
          t.string :religion
          t.string :junk_food
          t.string :television_viewing
          t.string :english_fluency
          t.string :foreign_language
          t.string :drive_child
          t.string :public_transportation
          t.string :level_of_experience
          t.string :smoker
          t.string :cpr_certification
          t.string :agree
          t.integer :activate_flag
          t.timestamps
        end
      end

  def self.down
     drop_table :users
  end
 end
  
