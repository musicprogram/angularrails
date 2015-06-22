class DescripcionesController < ApplicationController
	def create
	    @producto = Producto.find(params[:producto_id])
	    @descripcion = @producto.descripciones.create(descripcion_params)
	    redirect_to producto_path(@producto)
  	end


  	 def destroy
	    @producto = Producto.find(params[:producto_id])
	    @descripcion = @producto.descripciones.find(params[:id])
	    @descripcion.destroy
	     redirect_to producto_path(@producto)
 	 end

 
  private
    def descripcion_params
      params.require(:descripcion).permit(:titulo, :total_unidades, :ganancias)
    end
end
