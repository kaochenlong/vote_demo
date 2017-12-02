class CandidatesController < ApplicationController
  def index
  end

  def new
  end

  def create
    # 收集資料
    # Strong parameters
    clean_params = params.require(:candidate).permit(:name, :age, :party)
    @candidate = Candidate.new(clean_params)

    if @candidate.save
      redirect_to candidates_path
    else
      #
    end
  end

end
