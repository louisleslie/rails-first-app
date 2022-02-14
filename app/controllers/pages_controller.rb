class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["Rachel", "Christopher", "Yasmine", "Aleksejs", "Phillip", "Emma", "Tara", 
      "Kubi", "Ochir", "Silvia", "Alex", "Jeremiah", "Vivek", "Reza", "Antonis", "Solomon", "Deniz", 
      "David", "Joe", "Henry", "Abbas", "Anja", "Carolin", "Arabella", "Natalija", "Thinh", "Alastair",
      "Luz", "Joshua", "Jin", "Ahmed", "Ian"]
    search_query = params[:member]
    p search_query
    if search_query.present?
      @members = @members.select {|member| member.downcase == search_query.downcase }
    end
  end

  def home
  end
end
