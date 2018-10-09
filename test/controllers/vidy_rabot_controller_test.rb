require 'test_helper'

class VidyRabotControllerTest < ActionDispatch::IntegrationTest
  test "should get shpaklevka_sten_cena" do
    get vidy_rabot_shpaklevka_sten_cena_url
    assert_response :success
  end

  test "should get shpaklevka_sten_pod_oboi_ceny" do
    get vidy_rabot_shpaklevka_sten_pod_oboi_ceny_url
    assert_response :success
  end

  test "should get shpaklevka_sten_pod_pokrasku_cena" do
    get vidy_rabot_shpaklevka_sten_pod_pokrasku_cena_url
    assert_response :success
  end

  test "should get shtukaturka_sten_cena" do
    get vidy_rabot_shtukaturka_sten_cena_url
    assert_response :success
  end

  test "should get pokleyka_oboev_cena" do
    get vidy_rabot_pokleyka_oboev_cena_url
    assert_response :success
  end

  test "should get poklejka_vinilovyh_oboev" do
    get vidy_rabot_poklejka_vinilovyh_oboev_url
    assert_response :success
  end

  test "should get poklejka_oboev_na_flizelinovoj_osnove" do
    get vidy_rabot_poklejka_oboev_na_flizelinovoj_osnove_url
    assert_response :success
  end

  test "should get pokleyka_tekstilnyh_oboev" do
    get vidy_rabot_pokleyka_tekstilnyh_oboev_url
    assert_response :success
  end

  test "should get pokleyka_oboev_pod_pokrasku" do
    get vidy_rabot_pokleyka_oboev_pod_pokrasku_url
    assert_response :success
  end

  test "should get pokleyka_steklooboev" do
    get vidy_rabot_pokleyka_steklooboev_url
    assert_response :success
  end

  test "should get pokraska_sten_potolka_cena" do
    get vidy_rabot_pokraska_sten_potolka_cena_url
    assert_response :success
  end

  test "should get pokraska_sten_cena" do
    get vidy_rabot_pokraska_sten_cena_url
    assert_response :success
  end

  test "should get pokraska_potolka_cena" do
    get vidy_rabot_pokraska_potolka_cena_url
    assert_response :success
  end

  test "should get stjazhka_pola_cena" do
    get vidy_rabot_stjazhka_pola_cena_url
    assert_response :success
  end

  test "should get samovyravnivajushhajasja_stjazhka" do
    get vidy_rabot_samovyravnivajushhajasja_stjazhka_url
    assert_response :success
  end

  test "should get stjazhka_pola_s_keramzitom" do
    get vidy_rabot_stjazhka_pola_s_keramzitom_url
    assert_response :success
  end

  test "should get ukladka_laminata_cena" do
    get vidy_rabot_ukladka_laminata_cena_url
    assert_response :success
  end

  test "should get ukladka_parketnoy_doski" do
    get vidy_rabot_ukladka_parketnoy_doski_url
    assert_response :success
  end

  test "should get ukladka_plitki" do
    get vidy_rabot_ukladka_plitki_url
    assert_response :success
  end

  test "should get ukladka_plitki_na_stenu" do
    get vidy_rabot_ukladka_plitki_na_stenu_url
    assert_response :success
  end

  test "should get ukladka_plitki_na_pol" do
    get vidy_rabot_ukladka_plitki_na_pol_url
    assert_response :success
  end

  test "should get ukladka_keramogranita_cena" do
    get vidy_rabot_ukladka_keramogranita_cena_url
    assert_response :success
  end

  test "should get uteplenie_i_otdelka_balkonov_i_lodzhij" do
    get vidy_rabot_uteplenie_i_otdelka_balkonov_i_lodzhij_url
    assert_response :success
  end

  test "should get ustanovka_mezhkomnatnyh_dverej" do
    get vidy_rabot_ustanovka_mezhkomnatnyh_dverej_url
    assert_response :success
  end

  test "should get natyazhnye_potolki_v_moskve" do
    get vidy_rabot_natyazhnye_potolki_v_moskve_url
    assert_response :success
  end

end
