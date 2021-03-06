module ApplicationHelper

	def link_to_remove_fields(name, f)
    link_to_function(name, "if(confirm('Are you sure?')) remove_fields(this)", class: 'btn btn-mini btn-danger')
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
    str.gsub!("$laquo;", " ")
    str.gsub!("&raquo;", " ")
    str
  end


  # full or not full?
  def current_ord_x(obj, fullscreen)
    if fullscreen
      obj.x_full.present? ? obj.x_full : obj.x 
    else
      obj.x
    end
  end

  def current_ord_y(obj, fullscreen)
    if fullscreen
      obj.y_full.present? ? obj.y_full : obj.y 
    else
      obj.y
    end
  end

  def current_width(fullscreen, obj)
    if fullscreen
      obj.widths[:fullscreen].present? ? obj.widths[:fullscreen] : obj.width
    else
      obj.width
    end 
  end

  def current_height(fullscreen, obj)
    if fullscreen
      obj.heights[:fullscreen].present? ? obj.heights[:fullscreen] : obj.height
    else
      obj.height
    end 
  end
end
