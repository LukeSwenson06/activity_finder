class Activity
    attr_reader :accessibility,
                :activity,
                :participants,
                :price,
                :type
    def initialize(data)
        @activity = data[:activity]
        @type = data[:type]
        @participants = data[:participants]
        @price = data[:price]
        @accessibility = data[:accessibility]
    end
end