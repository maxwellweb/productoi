require 'test_helper'

class PaginaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Pagina.new.valid?
  end
end
