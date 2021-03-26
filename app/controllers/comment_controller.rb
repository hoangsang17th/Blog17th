class CommentController < ApplicationController
    def index
    end
    
      # GET /comments/1 or /comments/1.json
    def show
    end

    # GET /comments/new
    def new
    @comment = Comment.new
    end

    # GET /comments/1/edit
    def edit
    end

    # comment /comments or /comments.json
    def create
    @comment = Comment.new(comment_params)

        respond_to do |format|
            if @comment.save
            format.html { redirect_to @comment, notice: "comment was successfully created." }
            format.json { render :show, status: :created, location: @comment }
            else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /comments/1 or /comments/1.json
    def update
        respond_to do |format|
            if @comment.update(comment_params)
            format.html { redirect_to @comment, notice: "comment was successfully updated." }
            format.json { render :show, status: :ok, location: @comment }
            else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /comments/1 or /comments/1.json
    def destroy
    @comment.destroy
    respond_to do |format|
        format.html { redirect_to comments_url, notice: "comment was successfully destroyed." }
        format.json { head :no_content }
    end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
        @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
        params.require(:comment).permit(:Title, :Tag, :Content, :Author)
    end
end
