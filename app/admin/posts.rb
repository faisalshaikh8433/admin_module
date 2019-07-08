ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :admin_user_id, :title, :body, :attributes
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column :admin_user
  column :title
  column :body
  column :created_at
  column :updated_at
  actions
end
# sidebar :help do
#   ul do
#     li "Second List First Item"
#     li "Second List Second Item"
#   end
# end
form do |f|
  f.inputs do
    f.input :admin_user,  member_label: proc{|a| a.name.to_s}
    f.input :title
    f.input :body
  end
  f.actions
end

end
