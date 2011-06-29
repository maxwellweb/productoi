class CategoriasController < ApplicationController
  layout 'aplicacion'
  def index
    @categorias = Categoria.all
    @productos = Producto.all
  end

  def list
    @categorias = Categoria.find(:all)
  end

  def show
    @categoria = Categoria.find(params[:id])
  end

  def new
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new(params[:categoria])
    if @categoria.save
      flash[:notice] = "Successfully created categoria."
      redirect_to @categoria
    else
      render :action => 'new'
    end
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    @categoria = Categoria.find(params[:id])
    if @categoria.update_attributes(params[:categoria])
      flash[:notice] = "Successfully updated categoria."
      redirect_to @categoria
    else
      render :action => 'edit'
    end
  end

  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
    flash[:notice] = "Successfully destroyed categoria."
    redirect_to categorias_url
  end
end
