module GollumEditor::FormBuilder
  def gollum_editor(method, options = {})
    @template.gollum_editor(@object_name, method, objectify_options(options))
  end
end