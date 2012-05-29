class PostsController < ApplicationController
def index
@posts=Post.all
end
def show
@post=Post.find(params[:id])
end
def new
@post=Post.new
end
def create
@post=Post.new(params[:post])

if @post.save
redirect_to posts_path, :notice=>"successfully enterd student details"
else
render "new"
end
end
def edit

end
def update

end
def delete

end
end
