require 'spec_helper'
describe PagesController do
render_views
before(:each) do
#
# Define @base_title here.
#
end
describe "GET 'home'" do
it "should be successful" do
get 'home'
response.should be_success
end
  it "should have the right title" do
get 'home'
response.should have_selector("title",
:content => @base_title + "| Home")
 end
end
describe "GET 'contact'" do
it "should be successful" do
get 'contact'
response.should be_success
end
	it "should have the right title" do
get 'contact'
response.should have_selector("title",
:content => @base_title +"| Contact")
 end
end
describe "GET 'about'" do
it "should be successful" do
get 'about'
response.should be_success
end
	it "should have the right title" do
get 'about'
response.should have_selector("title",
:content => @base_titlle + | About")
 end
end
describe "POST 'create'" do
describe "failure" do
before(:each) do
@attr = { :name => "", :email => "", :password => "",
:password_confirmation => "" }
end
it "should not create a user" do
lambda do
post :create, :user => @attr
end.should_not change(User, :count)
end
it "should have the right title" do
post :create, :user => @attr
response.should have_selector("title", :content => "Sign up")
end
it "should render the 'new' page" do
post :create, :user => @attr
response.should render_template('new')
end
end
end
describe "success" do
8.3
Signup Success
307
before(:each) do
@attr = { :name => "New User", :email => "user@example.com",
:password => "foobar", :password_confirmation => "foobar" }
end
it "should create a user" do
lambda do
post :create, :user => @attr
end.should change(User, :count).by(1)
end
it "should redirect to the user show page" do
post :create, :user => @attr
response.should redirect_to(user_path(assigns(:user)))
end
end
end
describe "success" do
before(:each) do
@attr = { :name => "New User", :email => "user@example.com",
:password => "foobar", :password_confirmation => "foobar" }
end
it "should create a user" do
lambda do
post :create, :user => @attr
end.should change(User, :count).by(1)
end
it "should redirect to the user show page" do
post :create, :user => @attr
response.should redirect_to(user_path(assigns(:user)))
end
it "should have a welcome message" do
post :create, :user => @attr
flash[:success].should = ̃ /welcome to the sample app/i
end
end
end
end

