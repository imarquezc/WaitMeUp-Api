class Request < ApplicationRecord
    validates :title, :presence => true
end

public
def forward_status
    self.status += 1
end
