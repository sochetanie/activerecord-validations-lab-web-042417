class Post < ActiveRecord::Base

    validates :content, length: { minimum: 250}
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
    validates :title, presence: true
    validates :title, exclusion: ["Won't Believe", "Secret", /Top [0-9]*/i, "Guess", "True Facts"]



end
