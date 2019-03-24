class TextResponse < Question
  validates :size, presence: true

  # This method returns what to display if an instructor (etc.) is creating or editing a questionnaire (questionnaires_controller.rb)
  def edit(_count)
    # html = '<tr>'
    # html += '<td align="center"><a rel="nofollow" data-method="delete" href="/questions/' + self.id.to_s + '">Remove</a></td>'
    # html += '<td><input size="6" value="' + self.seq.to_s +
    #         '" name="question[' + self.id.to_s + '][seq]" id="question_' + self.id.to_s + '_seq" type="text"></td>'
    # html += '<td><textarea cols="50" rows="1" name="question[' + self.id.to_s + '][txt]" id="question_' + self.id.to_s +
    #         '_txt" placeholder="Edit question content here">' + self.txt + '</textarea></td>'
    # html += '<td><input size="10" disabled="disabled" value="' + self.type +
    #         '" name="question[' + self.id.to_s + '][type]" id="question_' + self.id.to_s + '_type" type="text"></td>'
    # html += '<td><!--placeholder (TextResponse does not need weight)--></td>'
    # html += '<td>text area size <input size="6" value="' + self.size.to_s +
    #         '" name="question[' + self.id.to_s + '][size]" id="question_' + self.id.to_s + '_size" type="text"></td>'
    # html += '</tr>'
    #
    # html.html_safe
    content_tag(:tr,
                content_tag(:td, '<a rel="nofollow" data-method="delete" href="/questions/' + self.id.to_s + '">Remove</a>', {:align => "center"}, false) +
                    content_tag(:td, '<input size="6" value="' + self.seq.to_s + '" name="question[' + self.id.to_s + '][seq]" id="question_' +
                        self.id.to_s + '_seq" type="text">', {}, false) +
                    content_tag(:td, '<textarea cols="50" rows="1" name="question[' + self.id.to_s + '][txt]" id="question_' + self.id.to_s +
                        '_txt" placeholder="Edit question content here">' + self.txt + '</textarea>', {}, false) +
                    content_tag(:td, '<input size="10" disabled="disabled" value="' + self.type +
                        '" name="question[' + self.id.to_s + '][type]" id="question_' + self.id.to_s + '_type" type="text">', {}, false) +
                    content_tag(:td, '<!--placeholder (TextRsponse does not need weight)-->', {}, false) +
                    content_tar(:td, 'text area size <input size="6" value="' + self.size.to_s +
                        '" name="question[' + self.id.to_s + '][size]" id="question_' + self.id.to_s + '_size" type="text">', {}, false),{}, false)
  end

  # This method returns what to display if an instructor (etc.) is viewing a questionnaire
  def view_question_text
    content_tag(:tr,
                content_tag(:td, ' ' + self.txt + ' ', {align: "left"}, false) +
                    content_tag(:td, self.type, {align: "left"}, false) +
                    content_tag(:td, self.weight.to_s, {align: "center"}, false) +
                    content_tag(:td, '&mdash;', {align: "center"}, false), {}, false)
  end

  def complete; end

  def view_completed_question; end
end
