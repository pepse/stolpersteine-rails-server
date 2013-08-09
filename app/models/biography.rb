class Biography < ActiveRecord::Base
  belongs_to :location

  def as_json(options = nil)
    {
      :created_at => self.created_at,
      :updated_at => self.updated_at,
      :name => self.name,
      :location => self.location.id
    }
  end


end
