class Request < ApplicationRecord
    validates :title, :presence => true
end

public
def forward_status
    self.status += 1
end

def undo_status
    if self.status == 0
        return
    end
    self.status -= 1
end
