class Admin::TemplatesController < AdminController
  before_action :set_template, only: [:show, :edit, :update, :destroy]
  @@path = "app/views/first_mailer/**/*"

  def index
    @templates = []
    @files = Dir.glob(@@path)
    @files.each do |file|
      @template = {:name => File.basename(file, ".html.erb"), :size => number_to_human_size(File.size(file)), :full_name => File.basename(file)}
      @templates.push(@template)
    end
  end

  def show
  end

  def new

  end

  def edit
  end

  def create

  end

  def update
  end

  def add
    
  end

  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to templates_url, notice: 'Template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @file = 'app/views/first_mailer/' + params[:name] + '.html.erb'
      @template = File.open(@file).read
      @template =  {:name => params[:name], :size => number_to_human_size(File.size(@file)), :body => File.open(@file).read}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_params
      params.require(:template).permit(:name, :size, :full_name, :body).original_filename
    end
end
