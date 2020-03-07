class CalcsController < ApplicationController
  def show
    val1 = params[:val1].to_i
    calc = params[:calc]
    val2 = params[:val2].to_i

    @result1 = if calc == "addition"
                val1 + val2
              elsif calc == "subtraction"
                val1 - val2
              elsif calc == "multiplication"
                val1 * val2
              elsif calc == "division"
                val1 / val2
              else
                "計算できません"
              end

    # @result = case calc
    #           when "addition"
    #             val1 + val2
    #           when "subtraction"
    #             val1 - val2
    #           when "multiplication"
    #             val1 * val2
    #           when "division"
    #             val1 / val2
    #           else
    #             "計算できません"
    #           end
  end
end
