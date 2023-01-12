class Activity
    attr_reader :accessibility,
                :description,
                :participants,
                :price,
                :type
    def initialize(data)
        @description = data[:activity]
        @type = data[:type]
        @participants = data[:participants]
        @price = data[:price]
        @accessibility = data[:accessibility]
    end
end