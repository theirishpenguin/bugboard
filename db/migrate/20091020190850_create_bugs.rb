class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.string :title
      t.string :project
      t.string :project_homepage
      t.string :programming_language
      t.string :assigned_to
      t.string :bug_report_url
      t.string :bucket

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
