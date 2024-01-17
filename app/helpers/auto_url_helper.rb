module AutoUrlHelper
  # create methods :
  # index_path_for
  # index_url_for
  # new_path_for
  # ...
  [:index, :new, :create].each do |action|
    define_method("#{action}_path_for") do |record, prefix: nil, **additional_params|
      helper_name = helper_name(record, action: action, suffix: "path", prefix: prefix)
      send(helper_name, additional_params)
    end
  
    define_method("#{action}_url_for") do |record, prefix: nil, **additional_params|
      helper_name = helper_name(record, action: action, suffix: "url", prefix: prefix)
      send(helper_name, additional_params)
    end
  end

  # create methods :
  # edit_path_for
  # edit_url_for
  # update_path_for
  # ...
  [:show, :edit, :update, :destroy].each do |action|
    define_method("#{action}_path_for") do |record, prefix: nil, **additional_params|
      helper_name = helper_name(record, action: action, suffix: "path", prefix: prefix)
      send(helper_name, record, additional_params)
    end
  
    define_method("#{action}_url_for") do |record, prefix: nil, **additional_params|
      helper_name = helper_name(record, action: action, suffix: "url", prefix: prefix)
      send(helper_name, record, additional_params)
    end
  end

  private

  HELPER_NAME_WITHOUT_ACTION = [:index, :show, :creation, :update, :destroy]
  def helper_name(record, action:, suffix:, prefix: nil)
    record_path_name = record_path_name(record, action)
    helper_name = "#{record_path_name}_#{suffix}"
    helper_name = "#{prefix}_#{helper_name}" if prefix
    helper_name = "#{action}_#{helper_name}" unless HELPER_NAME_WITHOUT_ACTION.include?(action.to_sym)
    helper_name
  end

  def record_path_name(record, action)
    klass = record.class != Class ? record.class : record
    return klass.to_s.pluralize.underscore if action.to_sym == :index

    klass.to_s.underscore
  end
end
