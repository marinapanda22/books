class AddBookToNotices < ActiveRecord::Migration[5.0]
  def change
    add_reference :notices, :book, foreign_key: true
  end
end
