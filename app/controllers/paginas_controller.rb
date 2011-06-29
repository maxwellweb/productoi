class PaginasController < ApplicationController
  layout 'aplicacion'
  def index
    @paginas = Pagina.all
  end

  def show
    @pagina = Pagina.find(params[:id])
  end

  def new
    @pagina = Pagina.new
  end

  def create
    @pagina = Pagina.new(params[:pagina])
    if @pagina.save
      flash[:notice] = "Successfully created pagina."
      redirect_to @pagina
    else
      render :action => 'new'
    end
  end

  def edit
    @pagina = Pagina.find(params[:id])
  end

  def update
    @pagina = Pagina.find(params[:id])
    if @pagina.update_attributes(params[:pagina])
      flash[:notice] = "Successfully updated pagina."
      redirect_to @pagina
    else
      render :action => 'edit'
    end
  end

  def destroy
    @pagina = Pagina.find(params[:id])
    @pagina.destroy
    flash[:notice] = "Successfully destroyed pagina."
    redirect_to paginas_url
  end
end
