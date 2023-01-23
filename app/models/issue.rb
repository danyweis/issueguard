class Issue < ApplicationRecord
  
  validates :name, presence: true
  validates :description, length: { minimum: 25 }

  STATUSES = %w(Open Pending Closed Overdue)
  PRIORITYS = %w(Critical High Medium Low None)

  validates :priority, inclusion: {in: PRIORITYS}
  validates :status, inclusion: {in: STATUSES}

end
