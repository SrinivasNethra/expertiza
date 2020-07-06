class TableHeader < QuestionnaireHeader
  def complete(_count, _answer = nil)
    make_html
  end

  def view_completed_question(_count, _answer)
    make_html
  end

  private def make_html
    capture do
      concat tag("br", {}, false, false)
      concat content_tag(:big, content_tag(:b, self.txt, {}, false), {}, false)
      concat tag("br", {}, false, false)
      concat tag("table", {class: "general", style: "border: 2; text-align: left; width: 100%"}, true, false)
    end
  end
end
