require 'prawn/table'
class ProjectsPdf < Prawn::Document

  def initialize(projects)
    super()
    @projects = Project.order("name DESC").all
    project_id
  end

  def project_id

    image "#{Rails.root}/app/assets/images/edi.jpg", height: 50
    y_position = cursor + 50
    bounding_box([200, y_position], :width => 300, :height => 30 )do
      text "Lista de proyectos", size: 20, style: :bold
    end
    font_size 10
    move_down 40

    table project_id_all do
      row(0).font_style = :bold
      columns(1).align = :right
      columns(2..3).align = :center
      columns(2..3).width = 150
      columns(0..1).width = 100
      self.row_colors = ["DDDDDDD","FFFFFFFFF"]
      self.header = true
    end
  end

  def project_id_all
    [["Nombre","Monto","Fecha_inicio","Fecha_Fin"]] + @projects.map do |project|
      [project.name, project.mount, project.init_date,project.end_date]
    end

  end

end