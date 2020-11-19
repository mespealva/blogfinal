class Client < User
    validates :full_name, presence: true
end