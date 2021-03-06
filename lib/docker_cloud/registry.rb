module DockerCloud
  class Registry < DockerCloud::Type
    def resource_uri
      info[:resource_uri]
    end

    def name
      info[:name]
    end

    def host
      info[:host]
    end

    def docker_registry?
      info[:is_docker_registry]
    end

    def ssl?
      info[:is_ssl]
    end

    def port
      info[:port]
    end
  end
end
