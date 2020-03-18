module ApplicationHelper
    def format_date(date)
        # formatting date: Aug, 31 2007 - 9:55PM
        date.strftime("%b, %m %Y - %H:%M")
    end

    def list_models
        # ActiveRecord::Base.connection.tables.map do |model|
        #     model.capitalize.singularize.camelize
        # end
        Rails.application.eager_load! #(required on development environment)
        ApplicationRecord.descendants.collect(&:name) # It returns only the model names
    end
end
