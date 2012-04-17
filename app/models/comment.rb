class Comment < ActiveRecord::Base
belongs_to :commentable, :polymorphic => true

# Validations
validates_presence_of :content, :name, :email
validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "Email format is not valid"

end
