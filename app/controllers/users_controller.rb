
class UsersController < ApplicationController
 

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end
 
  # GET /users/1/edit

  def matches
    @user = current_user
    @user1= User.find(:all)

    
  end

 def deactivate
   @user = current_user
   @user.update_attributes(:activate_flag =>1)
   redirect_to(@user)
 end

  def activate
    @user = current_user
    @user.update_attributes(:activate_flag =>0)
    redirect_to(@user)
  end
  def edit
    @user = current_user
    @user.update_attributes(:activate_flag =>1)
    
  end
  def edit1
    @user = current_user
    @user.update_attributes(:activate_flag =>0)
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.number_of_days=params[:days]
    @user.number_of_hours=params[:hours]
    @user.hours_needed=params[:hours_need]
    @user.religion=params[:religion]
    
    respond_to do |format|
      if @user.save
        flash[:notice] = 'Registration successful.'
        format.html { redirect_to(@user) }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])

        format.html { redirect_to(@user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
