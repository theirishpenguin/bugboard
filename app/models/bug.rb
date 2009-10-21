class Bug < ActiveRecord::Base
  validates_inclusion_of :bucket, :in => %w( Proposed Assigned Completed ), :message => "Bug can only go into Proposed, Assigned or Completed buckets"

  def bucket=(val)
    write_attribute(:bucket, val.capitalize)
  end
end
