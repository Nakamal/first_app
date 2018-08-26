class Api::FirstClassAppsController < ApplicationController
  def exercise
    @message = "I barely did it, falling face first over the finish line is still finishing...I think."
    render "first_view.json.jbuilder"
  end

  def fortune
    moment_of_zen = [
                      "Only listen to the fortune cookie; disregard all other fortune telling units.", 
                      "I think they have found me out, this may be my final messgage. Tell Scott I do give a damn (cough, cough). Tell Tiny Tim I won't be coming home this Christmas(cough, cough)", 
                      "If you broke this cookie then this fortune won't come true."
                      ]
    @your_fortune = moment_of_zen.sample
    render "fortune_view.json.jbuilder"
  end

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    picked_numbers = possible_numbers.sample(6)

    @final_numbers = "Your lucky numbers for today are: #{picked_numbers.join(", ")}"

    render "lotto_view.json.jbuilder"
  end
end
