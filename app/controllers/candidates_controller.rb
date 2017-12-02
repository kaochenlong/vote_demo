class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
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

  def edit
    @candidate = Candidate.find_by(id: params[:id])
  end

  def update
    clean_params = params.require(:candidate).permit(:name, :age, :party)
    @candidate = Candidate.find_by(id: params[:id])

    if @candidate.update(clean_params)
      redirect_to candidates_path
    else
      # ...
    end
  end
end
