module GollumEditor
  module FormHelper
    def gollum_editor(object_name, method, options = {})
      controls = '<div id="gollum-editor-function-bar">
        <div id="gollum-editor-function-buttons">
        <a href="#" id="function-bold" class="function-button" title="Bold">
          <span>Bold</span></a>
        <a href="#" id="function-italic" class="function-button" title="Italic">
          <span>Italic</span></a>
        <a href="#" id="function-code" class="function-button" title="Code">
          <span>Code</span></a>
        <span class="function-divider">&nbsp;</span>
        <a href="#" id="function-ul" class="function-button" title="Bullet List">
          <span>Unordered List</span></a>
        <a href="#" id="function-ol" class="function-button" title="Numbered List">
          <span>Ordered List</span></a>
        <a href="#" id="function-blockquote" class="function-button" title="Quote">
          <span>Blockquote</span></a>

        <a href="#" id="function-hr" class="function-button" title="Horizontal Rule">
          <span>Horizontal Rule</span></a>
        <span class="function-divider">&nbsp;</span>
        <a href="#" id="function-h1" class="function-button" title="Heading 1">
          <span>h1</span></a>
        <a href="#" id="function-h2" class="function-button" title="Heading 2">
          <span>h2</span></a>
        <a href="#" id="function-h3" class="function-button" title="Heading 3">
          <span>h3</span></a>
        <span class="function-divider">&nbsp;</span>
        <a href="#" id="function-link" class="function-button" title="Insert Link">
          <span>Link</span></a>
        <a href="#" id="function-image" class="function-button" title="Insert Image">
          <span>Image</span></a>
        <span class="function-divider">&nbsp;</span>
        <a href="#" id="function-help" class="function-button" title="Help">
          <span>Help</span></a>
        </div>
      </div>

      <div id="gollum-editor-help" class="jaws">
        <ul id="gollum-editor-help-parent">
          <li><a href="javascript:void(0);" class="selected">Help 1</a></li>
          <li><a href="javascript:void(0);">Help 1</a></li>
          <li><a href="javascript:void(0);">Help 1</a></li>
        </ul>
        <ul id="gollum-editor-help-list">
          <li><a href="javascript:void(0);">Help 2</a></li>
          <li><a href="javascript:void(0);">Help 3</a></li>
          <li><a href="javascript:void(0);">Help 4</a></li>
          <li><a href="javascript:void(0);">Help 5</a></li>
          <li><a href="javascript:void(0);">Help 6</a></li>
          <li><a href="javascript:void(0);">Help 7</a></li>
          <li><a href="javascript:void(0);">Help 8</a></li>
        </ul>
        <div id="gollum-editor-help-wrapper">
          <div id="gollum-editor-help-content">
          <p>
          </p>
          </div>
        </div>
      </div>

      <span class="jaws"><br></span>'
      input = text_area(object_name, method, options)
      content_tag(:div, (controls.html_safe + input), { :id => 'gollum-editor' })
    end

    def self.included(arg)
      ActionView::Helpers::FormBuilder.send(:include, GollumEditor::FormBuilder)
    end
  end
end
ActionView::Helpers::FormHelper.send(:include, GollumEditor::FormHelper)
