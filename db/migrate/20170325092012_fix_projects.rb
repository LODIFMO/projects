class FixProjects < ActiveRecord::Migration
  def change
    add_column :projects, :code, :string
    add_column :projects, :owner, :string
    add_column :projects, :repo_url, :string
    add_column :projects, :wiki_url, :string
    remove_column :projects, :uri
  end
end
