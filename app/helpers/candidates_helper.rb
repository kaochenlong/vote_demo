module CandidatesHelper
  def show_age(candidate)
    if candidate.age && candidate.age >= 40
      link_to "*#{candidate.name}", candidate
    else
      link_to candidate.name, candidate
    end
  end

  # Keyword Argument
  def show_vote(count, limit: 5)
    if count > limit
      "<b style='color: red'>#{count}</b>".html_safe
    else
      "<b style='color: blue'>#{count}</b>".html_safe
    end
  end
end
