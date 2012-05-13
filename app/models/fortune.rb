class Fortune < ActiveRecord::Base
  attr_accessible :cytat, :zrodlo
  def self.search(search, page)
  paginate :per_page => 4, :page => page,
           :conditions => ['cytat like ?', "%#{search}%"],:order => 'cytat'
end
end
