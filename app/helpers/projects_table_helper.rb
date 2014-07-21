module ProjectsTableHelper
  
  def project_modules_links(project)
    links = []
    menu_items_for(:project_menu, project) do |node|
       links << link_to(extract_node_details(node, project)[0], extract_node_details(node, project)[1]) unless node.name == :overview
    end
    links.join(", ")
  end
  
end
