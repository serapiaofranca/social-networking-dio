class Admin::AdminsController < AdminController

    def index
        @admins = Admin.order(id: :desc)
    end

    def def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.new(form_params)

        respond_to do |format|
            if @admin.save
                redirect_to admin_admin_path
            else 
                render :new
            end
        end
    end

    private

    def form_params
        params.require(:admin).permit(:name, :email, :password, :password_confirmation)
    end
    
end