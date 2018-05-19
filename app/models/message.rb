class Message < ApplicationRecord

    belongs_to :sender, class_name: "User"

    belongs_to :sended, class_name: "User"
end
