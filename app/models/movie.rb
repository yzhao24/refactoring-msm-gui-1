# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  
  def director
    the_id = self.director_id

    matching_directors = Director.where({ :id => the_id })
    
    return matching_directors.at(0)
  end
end
