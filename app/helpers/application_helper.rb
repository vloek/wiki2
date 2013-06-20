module ApplicationHelper

	def link_to_remove_fields(name, f)
    link_to_function(name, "remove_fields(this)", class: 'btn btn-mini btn-danger')
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", class: 'btn btn-mini')
  end

  def link_to_add_fields_hint(name, f, association)
    fields = f.fields_for(:hints, Hint.new, child_index: "new_#{:hints}") do |builder|
      render "hint_fields", f: builder
    end
    link_to_function(name, "add_fields(this, \"#{:hints}\", \"#{escape_javascript(fields)}\")")
  end

  def link_to_add_fields_slide(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields_slide(this, \"#{association}\", \"#{escape_javascript(fields)}\")", class: 'btn btn-mini')
  end

  # Кнопка отправки ссылкой
  def link_to_submit(*args, &block)
    link_to_function (block_given? ? capture(&block) : args[0]), "$(this).closest('form').submit()", args.extract_options!
  end


  # удаление &nbsp; и &ndash;
  def replacing_space(str)
    str.gsub!("&nbsp;", " ")
    str.gsub!("&ndash;", "-")
    str
  end
end
