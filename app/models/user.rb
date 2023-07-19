class User < ApplicationRecord

  has_many :projects
  # has_many :tasks
  has_many :assigned_task, class_name: 'Task', foreign_key: 'user_id'
  has_many :created_task, class_name: 'Task', foreign_key: 'created_by_id'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         enum role: { coder: 0, manager: 1, admin: 2 }
end
