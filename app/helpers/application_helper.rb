module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Deploybutton"
    end
  end
end
