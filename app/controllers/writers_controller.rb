class WritersController < InheritedResources::Base

  private

    def writer_params
      params.require(:writer).permit(:name)
    end
end

