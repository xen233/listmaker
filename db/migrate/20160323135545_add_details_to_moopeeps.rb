class AddDetailsToMoopeeps < ActiveRecord::Migration
  def change
    add_column :moopeeps, :CourseAName, :string
    add_column :moopeeps, :CourseARole, :string
    add_column :moopeeps, :CourseBName, :string
    add_column :moopeeps, :CourseBRole, :string
    add_column :moopeeps, :CourseCName, :string
    add_column :moopeeps, :CourseCRole, :string
  end
end
