module ApplicationHelper
  def full_title page_title = ""
    base_title = t("base_title")
    page_title.blank? ? base_title : "#{page_title} | #{base_title}"
  end

  def link_to_add_row name, f, association, **args
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |p|
      render(association.to_s.singularize + "_fields", f: p)
    end
    link_to name, "#", class: "add_fields " + args[:class],
      data: {id: id, fields: fields.gsub("\n", "")}
  end
end
