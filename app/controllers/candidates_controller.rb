class CandidatesController < ApplicationController
  before_action :find_candidate, only: [:show, :edit, :update, :destroy, :vote]

  def index
    @candidates = Candidate.all.order(vote_count: :desc)
  end

  def show
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to candidates_path, notice: "新增成功"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @candidate.update(candidate_params)
      redirect_to candidates_path, notice: "更新成功"
    else
      render "edit"
    end
  end

  def destroy
    @candidate.destroy
    redirect_to candidates_path, notice: "資料已刪除!"
  end

  def vote
    ############
    # v = Vote.create(ip_address: request.remote_ip, candidate_id: @candidate.id)

    ############
    # v = Vote.new(ip_address: request.remote_ip, candidate_id: @candidate.id)
    # v.save

    ############
    @candidate.votes.create(ip_address: request.remote_ip)

    redirect_to candidates_path, notice: "投票成功!"
  end

  private
  def candidate_params
    params.require(:candidate).permit(
      :name,
      :age,
      :party,
      :comment
    )
  end

  def find_candidate
    @candidate = Candidate.find_by(id: params[:id])
  end
end
