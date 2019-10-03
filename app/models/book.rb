class Book < ApplicationRecord
  def self.search(search)
    if search
      where("title ILIKE ? OR author ILIKE ? OR classification ILIKE ? OR genre ILIKE ? OR types ILIKE?",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%")
    else
      Book.all
    end
  end
end
