class Project < ActiveRecord::Base

def self.to_csv(options = {})
  project_columns = ['Nombre del Proyecto', 'Monto','Fecha de inicio']
  CSV.generate do |csv|
    csv << project_columns


  all.each do |project|
    project_values = [project.name,
                      project.mount,
                      project.init_date
    ]
    csv << project_values
  end
  end
end





end
