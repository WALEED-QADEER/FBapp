class Project < ApplicationRecord
    # trigger_project_completion_worker, if: :saved_change_to_status?
    belongs_to :user
    has_many :tasks
    enum status: { pending: 0, in_progress: 1, complete: 2 }

    

#   private

#   def trigger_project_completion_worker
#     ProjectCompletionWorker.perform_async(id)
#   end
end
