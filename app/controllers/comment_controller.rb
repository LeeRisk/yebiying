class CommentController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :set_aticle, only: [:new, :create]
  before_action :editable_by?

  def new
    @comment = @article.comment.build
  end



  def create
    @comment = @article.comment.build(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render @article, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @comment.update(@comment_params)
        format.html { redirect_to @article, notice: '评论成功更新' }
        format.json { render @article, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: '评论成功删除' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_aticle
    @article = Article.find(params[article_id])
  end

  def set_comment
    @article = Article.find(params[article_id])
    @comment = @article.find(params[comment_id])
  end



  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:content)
  end

  def editable_by?
    unless current_user && current_user == owner
      flash[:warning] = "你不能操作别人的评论哦!"
      redirect_to root_path
    end
  end

end
