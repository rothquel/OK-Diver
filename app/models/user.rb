class User < ApplicationRecord
  has_many :logs
  has_many :dive_sites, -> { distinct }, through: :logs
  has_many :reviews
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  # Array to define content of level # Cap = constante
  PROFICIENCY = %w[beginner intermediate professional]

  acts_as_favoritor
  acts_as_messageable

  def name
    return "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def mailboxer_email(_object)
    #Check if an email should be sent for that object
    #if true
    # return "define_email@on_your.model"
    #if false
    return nil
  end
end
