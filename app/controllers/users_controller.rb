def create
  @user = User.new(user_params)
  if @user.save
    render json: { success: true, message: 'User created successfully' }, status: :created
  else
    render json: { success: false, errors: @user.errors.full_messages }, status: :unprocessable_entity
  end
end

def show
  user = User.find(session[:user_id])
    render json: user
end
private

def user_params
  params.require(:user).permit(:name, :email, :password)
end