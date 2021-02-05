# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string
#  description :text
#  name        :string           not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'date' 
require 'action_view'

class Cat < ApplicationRecord
    validates :sex, presence: true, inclusion: { in: ['M','F'], message: "sex must be either 'M' or 'F'"}
    validates :color, inclusion: { in: %w(black white gray orange brown), message: "must be a valid color"}
    validates :birth_date, presence: true
    validates :name, presence: true
    validates :description, presence: true
     

    def age
        today = Date.today

        total_today_months = (today.year * 12) + today.month
        total_birth_months =  (birth_date.year * 12) + birth_date.month 

        difference = total_today_months - total_birth_months 
        
        years = difference / 12 
        months = difference % 12 

        if years < 1 
            return "#{months} months old" 
        else
            return "#{years} years old" 
        end 
    end
end
