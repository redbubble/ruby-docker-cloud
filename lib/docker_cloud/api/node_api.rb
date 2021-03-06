module DockerCloud
  class NodeAPI < DockerCloud::API
    TYPE = 'Node'.freeze

    def resource_url(params = '')
      "/node/#{params}"
    end

    def all(params = {})
      response = http_get(resource_url, params)
      format_object(response, TYPE)
    end

    def get(uuid)
      response = http_get(resource_url(uuid))
      format_object(response, TYPE)
    end

    def deploy(uuid)
      http_post(resource_url("#{uuid}/deploy/"))
    end

    def terminate(uuid)
      http_delete(resource_url(uuid))
    end

    def health_check(uuid)
      http_post(resource_url("#{uuid}/health-check/"))
    end

    def docker_upgrade(uuid)
      http_post(resource_url("#{uuid}/docker-upgrade/"))
    end
  end
end
