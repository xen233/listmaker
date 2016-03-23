class MoopeepSearch
  attr_reader :fname, :sname

  def initialize(params)
    params ||= {}
    #@fname = parsed_fname(params[:firstname])
    @sname = parsed_sname(params[:surname])
  end

  def scope
    Moopeep.where('surname =?', @sname)
  end

  private

  def parsed_sname(default)
  rescue ArgumentError, TypeError
    default
  end

end