require 'test_helper'

class InformaciyaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get informaciya_index_url
    assert_response :success
  end

  test "should get chernovojRemontStandart" do
    get informaciya_chernovojRemontStandart_url
    assert_response :success
  end

  test "should get chernovojRemontKomfort" do
    get informaciya_chernovojRemontKomfort_url
    assert_response :success
  end

  test "should get remontKvartiryStandart" do
    get informaciya_remontKvartiryStandart_url
    assert_response :success
  end

  test "should get remontKvartiryKomfort" do
    get informaciya_remontKvartiryKomfort_url
    assert_response :success
  end

  test "should get remontKvartiryKomfortPljus" do
    get informaciya_remontKvartiryKomfortPljus_url
    assert_response :success
  end

  test "should get remontKvartiryPremium" do
    get informaciya_remontKvartiryPremium_url
    assert_response :success
  end

  test "should get remontKvartiryJekonom" do
    get informaciya_remontKvartiryJekonom_url
    assert_response :success
  end

  test "should get kosmeticheskijRemontKomnatyCeny" do
    get informaciya_kosmeticheskijRemontKomnatyCeny_url
    assert_response :success
  end

  test "should get cenaRemontaKoridora" do
    get informaciya_cenaRemontaKoridora_url
    assert_response :success
  end

  test "should get kosmeticheskijRemontKuhniCena" do
    get informaciya_kosmeticheskijRemontKuhniCena_url
    assert_response :success
  end

  test "should get obshivkaBalkonaPlastikovymiPanelyamiIVagonkoy" do
    get informaciya_obshivkaBalkonaPlastikovymiPanelyamiIVagonkoy_url
    assert_response :success
  end

  test "should get remontVannojKomnatyCeny" do
    get informaciya_remontVannojKomnatyCeny_url
    assert_response :success
  end

  test "should get raschetPeskobetonaDljaStjazhki" do
    get informaciya_raschetPeskobetonaDljaStjazhki_url
    assert_response :success
  end

  test "should get raschetKeramzitaNaStyazhku" do
    get informaciya_raschetKeramzitaNaStyazhku_url
    assert_response :success
  end

  test "should get raschetPloschadiStenPodPokleyku" do
    get informaciya_raschetPloschadiStenPodPokleyku_url
    assert_response :success
  end

  test "should get polipropilenovyeTruby" do
    get informaciya_polipropilenovyeTruby_url
    assert_response :success
  end

  test "should get elektricheskijTeplyjPolVKvartire" do
    get informaciya_elektricheskijTeplyjPolVKvartire_url
    assert_response :success
  end

  test "should get gidroizoljacijaPolaVKvartire" do
    get informaciya_gidroizoljacijaPolaVKvartire_url
    assert_response :success
  end

end
