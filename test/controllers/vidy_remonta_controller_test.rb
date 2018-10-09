require 'test_helper'

class VidyRemontaControllerTest < ActionDispatch::IntegrationTest
  test "should get evroremont_kvartir" do
    get vidy_remonta_evroremont_kvartir_url
    assert_response :success
  end

  test "should get kapitalnyj_remont_kvartir" do
    get vidy_remonta_kapitalnyj_remont_kvartir_url
    assert_response :success
  end

  test "should get kosmeticheskiy_remont_kvartiry" do
    get vidy_remonta_kosmeticheskiy_remont_kvartiry_url
    assert_response :success
  end

  test "should get remont_kvartir_pod_klyuch" do
    get vidy_remonta_remont_kvartir_pod_klyuch_url
    assert_response :success
  end

  test "should get kompleksnyj_remont_kvartir" do
    get vidy_remonta_kompleksnyj_remont_kvartir_url
    assert_response :success
  end

  test "should get remont_v_novostrojke" do
    get vidy_remonta_remont_v_novostrojke_url
    assert_response :success
  end

  test "should get chernovoj_remont_v_novostrojke" do
    get vidy_remonta_chernovoj_remont_v_novostrojke_url
    assert_response :success
  end

  test "should get chastichnyj_remont_kvartir" do
    get vidy_remonta_chastichnyj_remont_kvartir_url
    assert_response :success
  end

  test "should get kosmeticheskij_remont_komnaty" do
    get vidy_remonta_kosmeticheskij_remont_komnaty_url
    assert_response :success
  end

  test "should get remont_kuhni" do
    get vidy_remonta_remont_kuhni_url
    assert_response :success
  end

  test "should get remont_koridora_pod_kljuch" do
    get vidy_remonta_remont_koridora_pod_kljuch_url
    assert_response :success
  end

  test "should get remont_vannoj_komnaty_v_moskve" do
    get vidy_remonta_remont_vannoj_komnaty_v_moskve_url
    assert_response :success
  end

  test "should get remont_gostinoj" do
    get vidy_remonta_remont_gostinoj_url
    assert_response :success
  end

  test "should get remont_spalni" do
    get vidy_remonta_remont_spalni_url
    assert_response :success
  end

  test "should get remont_detskoy_komnaty" do
    get vidy_remonta_remont_detskoy_komnaty_url
    assert_response :success
  end

  test "should get remont_tualeta_v_kvartire" do
    get vidy_remonta_remont_tualeta_v_kvartire_url
    assert_response :success
  end

end
