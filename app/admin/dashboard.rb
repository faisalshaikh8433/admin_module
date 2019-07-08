ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
  #   div class: "blank_slate_container", id: "dashboard_default_message" do
  #     span class: "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end
  #   end

    tabs do
      tab :active_products do
        table_for Product.where(active: true) do
          column "Name", :name
          column "Rate", :rate
          column "Created at", :created_at
          column "Updated at", :updated_at
        end
      end
    
      tab :inactive_products do
        table_for Product.where.not(active: true) do
          column "Name", :name
          column "Rate", :rate
          column "Created at", :created_at
          column "Updated at", :updated_at
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Posts" do
          # ul do
          #   Post.take(3).map do |post|
          #     li link_to(post.title, admin_post_path(post))
          #   end
          # end
          table_for Post.all.take(3) do
            column "Title", :title
            column "Body", :body
            column "Created at", :created_at
            column "Updated at", :updated_at
            # column "Edit", link_to("edit", admin_post_path(:id))
          end

        end
      end
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
