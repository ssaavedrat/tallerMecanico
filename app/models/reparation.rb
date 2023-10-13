class Reparation < ApplicationRecord
    # Validations
    validates :status, presence: true
    validates :start_date_time, presence: true
    validates :end_date_time, presence: true

    # Enums
    enum status: { pending: 0, finished: 1}
end
