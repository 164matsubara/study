class VideosController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def index
        @videos = Video.all
    end
        
        
    def new
        @video = Video.new
    end 
    
    def create
        @video = current_user.videos.build(video_params)
        if @video.save
            flash[:success] = "Video created!"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
    def destroy
        @video = current_user.videos.find_by(id: params[:id])
        return redirect_to root_url if @video.nil?
        @video.destroy
        flash[:success] = "Video deleted"
        redirect_to request.erferrer || root_url
    end
    
    private
    def video_params
        params.require(:video).permit(:content, :video)
    end
end
