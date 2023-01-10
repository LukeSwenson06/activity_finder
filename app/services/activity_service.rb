class ActivityService
    def self.get_activity(participants)
       conn = Faraday.new("http://www.boredapi.com/api/activity") 
       response = conn.get do |f|
            f.params[:participants] = participants
       end
      JSON.parse(response.body, symbolize_names: true)
    end
end