class ReporteController < ApplicationController
  def index
  @plantas = Plantum.all
  @plantasOrdenadas = @plantas.sort_by(&:precio) 
  @plantasAltura = @plantas.sort_by(&:altura) 
  @plantasGerminacion = @plantas.sort_by(&:germinaciondias)

  end
end
