# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_image_list).provide(:arm) do
  mk_resource_methods

  def initialize(value = {})
    super(value)
    @property_flush = {}
    @is_create = false
    @is_delete = false
  end

  def description=(value)
    Puppet.info("description setter called to change to #{value}")
    @property_flush[:description] = value
  end

  def id=(value)
    Puppet.info("id setter called to change to #{value}")
    @property_flush[:id] = value
  end

  def metadata=(value)
    Puppet.info("metadata setter called to change to #{value}")
    @property_flush[:metadata] = value
  end

  def name=(value)
    Puppet.info("name setter called to change to #{value}")
    @property_flush[:name] = value
  end


  def create
    @is_create = true
    Puppet.info("Entered create for resource #{name} of type ImageList")
    hash = build_hash
    response = self.class.invoke_create(resource, hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info("Added :ensure to property hash")
    else
      raise Puppet::Error, "Create failed.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during create. The state of the resource is unknown.  ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end

  def flush
    Puppet.info("Entered flush for resource #{name} of type ImageList - creating ? #{@is_create}, deleting ? #{@is_delete}")
    if @is_create || @is_delete
      return # we've already done the create or delete
    end
    hash = build_hash
    response = self.class.invoke_update(resource, hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info("Added :ensure to property hash")
    else
      raise Puppet::Error, "Flush failed.  The state of the resource is unknown.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during flush. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end

  def build_hash
    image_list = {}
    image_list["Description"] = resource[:description] unless resource[:description].nil?
    image_list["Id"] = resource[:id] unless resource[:id].nil?
    image_list["Metadata"] = resource[:metadata] unless resource[:metadata].nil?
    image_list["Name"] = resource[:name] unless resource[:name].nil?
    return image_list
  end

  def self.build_key_values
    key_values = {}
    key_values["api-version"] = "v1.0"
    key_values
  end

  def destroy
    delete(resource)
  end

  def delete(hash)
    Puppet.info("Entered delete for resource #{hash[:name]} of type <no value>")
    @is_delete = true
    response = self.class.invoke_delete(hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info "Added :absent to property_hash"
    else
      raise Puppet::Error, "Delete failed.  The state of the resource is unknown.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during destroy. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end


  def self.invoke_create(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation ListManagementImageLists_Create")
    path_params = {}
    query_params = {}
    header_params = {}
    path_params[:body] = key_values["body"] unless key_values["body"].nil?
    path_params[:body] = ENV["azure_body"] unless ENV["azure_body"].nil?
    path_params[:body] = resource[:body] unless resource.nil? or resource[:body].nil?
    path_params[:content_type] = key_values["Content-Type"] unless key_values["Content-Type"].nil?
    path_params[:content_type] = ENV["azure_content_type"] unless ENV["azure_content_type"].nil?
    path_params[:content_type] = resource[:content_type] unless resource.nil? or resource[:content_type].nil?
    uri_string = "https:///contentmoderator/lists/v1.0/imagelists" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Post.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Post) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Post) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation ListManagementImageLists_Update")
    path_params = {}
    query_params = {}
    header_params = {}
    path_params[:body] = key_values["body"] unless key_values["body"].nil?
    path_params[:body] = ENV["azure_body"] unless ENV["azure_body"].nil?
    path_params[:body] = resource[:body] unless resource.nil? or resource[:body].nil?
    path_params[:content_type] = key_values["Content-Type"] unless key_values["Content-Type"].nil?
    path_params[:content_type] = ENV["azure_content_type"] unless ENV["azure_content_type"].nil?
    path_params[:content_type] = resource[:content_type] unless resource.nil? or resource[:content_type].nil?
    path_params[:list_id] = key_values["listId"] unless key_values["listId"].nil?
    path_params[:list_id] = ENV["azure_list_id"] unless ENV["azure_list_id"].nil?
    path_params[:list_id] = resource[:list_id] unless resource.nil? or resource[:list_id].nil?
    uri_string = "https:///contentmoderator/lists/v1.0/imagelists/%{list_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Put.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Put) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Put) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation ListManagementImageLists_Delete")
    path_params = {}
    query_params = {}
    header_params = {}
    path_params[:list_id] = key_values["listId"] unless key_values["listId"].nil?
    path_params[:list_id] = ENV["azure_list_id"] unless ENV["azure_list_id"].nil?
    path_params[:list_id] = resource[:list_id] unless resource.nil? or resource[:list_id].nil?
    uri_string = "https:///contentmoderator/lists/v1.0/imagelists/%{list_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Delete.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Delete) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Delete) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end


  def self.invoke_get_one(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation ListManagementImageLists_GetDetails")
    path_params = {}
    query_params = {}
    header_params = {}
    path_params[:list_id] = key_values["listId"] unless key_values["listId"].nil?
    path_params[:list_id] = ENV["azure_list_id"] unless ENV["azure_list_id"].nil?
    path_params[:list_id] = resource[:list_id] unless resource.nil? or resource[:list_id].nil?
    uri_string = "https:///contentmoderator/lists/v1.0/imagelists/%{list_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Get.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Get) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Get) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.authenticate(path_params, query_params, header_params, body_params)
    
    header_params["Ocp-Apim-Subscription-Key"] = ENV["<no value>_api_key"]
    end

  def exists?
    Puppet.info("exists_one for resource #{name} of type <no value>")
    return exists_one(resource)
  end

  
  def exists_one(resource)
    response = self.class.invoke_get_one(resource)

    if response.is_a? Net::HTTPSuccess
      return true
    else
      return false
    end
  rescue Exception => ex
    Puppet.alert("Exception during exists_one. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end
  def self.add_keys_to_request(request, hash)
    if hash
      hash.each { |x, v| request[x] = v }
    end
  end

  def self.to_query(hash)
    if hash
      return_value = hash.map { |x, v| "#{x}=#{v}" }.reduce { |x, v| "#{x}&#{v}" }
      if !return_value.nil?
        return return_value
      end
    end
    return ""
  end
end # this is the end of the ruby class

