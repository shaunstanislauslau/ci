require_relative "worker_base"

module FastlaneCI
  # Responsible for running `git pull` on the ci config repo
  # in the background, every x seconds
  class RefreshConfigDataSourcesWorker < WorkerBase
    def work
      FastlaneCI::Services.project_data_source.refresh_repo
    end

    def timeout
      15
    end
  end
end
