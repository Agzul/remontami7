require 'test_helper'

class InformaciyaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get informaciya_index_url
    assert_response :success
  end

  test "should get chernovoj_remont_standart" do
    get informaciya_chernovoj_remont_standart_url
    assert_response :success
  end

  test "should get chernovoj_remont_komfort" do
    get informaciya_chernovoj_remont_komfort_url
    assert_response :success
  end

  test "should get remont_kvartiry_standart" do
    get informaciya_remont_kvartiry_standart_url
    assert_response :success
  end

  test "should get remont_kvartiry_komfort" do
    get informaciya_remont_kvartiry_komfort_url
    assert_response :success
  end

  test "should get remont_kvartiry_komfort_pljus" do
    get informaciya_remont_kvartiry_komfort_pljus_url
    assert_response :success
  end

  test "should get remont_kvartiry_premium" do
    get informaciya_remont_kvartiry_premium_url
    assert_response :success
  end

  test "should get remont_kvartiry_jekonom" do
    get informaciya_remont_kvartiry_jekonom_url
    assert_response :success
  end

  test "should get kosmeticheskij_remont_komnaty_ceny" do
    get informaciya_kosmeticheskij_remont_komnaty_ceny_url
    assert_response :success
  end

  test "should get cena_remonta_koridora" do
    get informaciya_cena_remonta_koridora_url
    assert_response :success
  end

  test "should get kosmeticheskij_remont_kuhni_cena" do
    get informaciya_kosmeticheskij_remont_kuhni_cena_url
    assert_response :success
  end

  test "should get obshivka_balkona_plastikovymi_panelyami_i_vagonkoy" do
    get informaciya_obshivka_balkona_plastikovymi_panelyami_i_vagonkoy_url
    assert_response :success
  end

  test "should get remont_vannoj_komnaty_ceny" do
    get informaciya_remont_vannoj_komnaty_ceny_url
    assert_response :success
  end

  test "should get raschet_peskobetona_dlja_stjazhki" do
    get informaciya_raschet_peskobetona_dlja_stjazhki_url
    assert_response :success
  end

  test "should get raschet_keramzita_na_styazhku" do
    get informaciya_raschet_keramzita_na_styazhku_url
    assert_response :success
  end

  test "should get raschet_ploschadi_sten_pod_pokleyku" do
    get informaciya_raschet_ploschadi_sten_pod_pokleyku_url
    assert_response :success
  end

  test "should get polipropilenovye_truby" do
    get informaciya_polipropilenovye_truby_url
    assert_response :success
  end

  test "should get elektricheskij_teplyj_pol_v_kvartire" do
    get informaciya_elektricheskij_teplyj_pol_v_kvartire_url
    assert_response :success
  end

  test "should get gidroizoljacija_pola_v_kvartire" do
    get informaciya_gidroizoljacija_pola_v_kvartire_url
    assert_response :success
  end

end
