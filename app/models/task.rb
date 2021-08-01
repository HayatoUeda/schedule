class Task < ApplicationRecord
    validates :title, presence: true
    validates :startdate, presence: true
    validates :enddate, presence: true
    validate :day_after_today
        def day_after_today
            unless enddate == nil
                errors.add(:enddate, 'は、今日以降の日付を入力して下さい') if enddate < Date.today
        end
    end
end
