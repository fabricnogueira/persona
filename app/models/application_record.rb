class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

include AttrKeyring.active_record
end
