.class public Lcom/mediatek/settings/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field public static final EVDO_DT_SUPPORT:Z

.field public static final MTK_2SDCARD_SWAP:Z

.field public static final MTK_AGPS_APP:Z

.field public static final MTK_AUDENH_SUPPORT:Z

.field public static final MTK_AUDIO_PROFILES:Z

.field public static final MTK_BEAM_PLUS_SUPPORT:Z

.field public static final MTK_BESLOUDNESS_SUPPORT:Z

.field public static final MTK_BESSURROUND_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_SUPPORT:Z

.field public static final MTK_BG_POWER_SAVING_UI_SUPPORT:Z

.field public static final MTK_BT_SUPPORT:Z

.field public static final MTK_CACHE_MERGE_SUPPORT:Z

.field public static final MTK_CLEARMOTION_SUPPORT:Z

.field public static final MTK_DHCPV6C_WIFI:Z

.field public static final MTK_DRM_APP:Z

.field public static final MTK_DUAL_INPUT_CHARGER_SUPPORT:Z

.field public static final MTK_EAP_SIM_AKA:Z

.field public static final MTK_EMMC_SUPPORT:Z

.field public static final MTK_FOTA_ENTRY:Z

.field public static final MTK_GEMINI_3G_SWITCH:Z

.field public static final MTK_GEMINI_3SIM_SUPPORT:Z

.field public static final MTK_GEMINI_4SIM_SUPPORT:Z

.field public static final MTK_GEMINI_SUPPORT:Z

.field public static final MTK_GMO_RAM_OPTIMIZE:Z

.field public static final MTK_GMO_ROM_OPTIMIZE:Z

.field public static final MTK_GPS_SUPPORT:Z

.field public static final MTK_IPO_SUPPORT:Z

.field public static final MTK_LOSSLESS_SUPPORT:Z

.field public static final MTK_MDM_FUMO:Z

.field public static final MTK_MDM_SCOMO:Z

.field public static final MTK_MIRAVISION_SETTING_SUPPORT:Z

.field public static final MTK_MULTISIM_RINGTONE_SUPPORT:Z

.field public static final MTK_MULTI_PARTITION_MOUNT_ONLY_SUPPORT:Z

.field public static final MTK_NFC_ADDON_SUPPORT:Z

.field public static final MTK_OMACP_SUPPORT:Z

.field public static final MTK_ONLY_OWNER_SIM_SUPPORT:Z

.field public static final MTK_OWNER_SDCARD_ONLY_SUPPORT:Z

.field public static final MTK_PASSPOINT_R1_SUPPORT:Z

.field public static final MTK_POWER_SAVING_SWITCH_UI_SUPPORT:Z

.field public static final MTK_PRODUCT_IS_TABLET:Z

.field public static final MTK_SCOMO_ENTRY:Z

.field public static final MTK_SHARED_SDCARD:Z

.field public static final MTK_SMARTBOOK_SUPPORT:Z

.field public static final MTK_SVLTE_SUPPORT:Z

.field public static final MTK_SYSTEM_UPDATE_SUPPORT:Z

.field public static final MTK_TC1_FEATURE:Z

.field public static final MTK_TETHERINGIPV6_SUPPORT:Z

.field public static final MTK_TETHERING_EEM_SUPPORT:Z

.field public static final MTK_THEMEMANAGER_APP:Z

.field public static final MTK_VOICE_UI_SUPPORT:Z

.field public static final MTK_VOICE_UNLOCK_SUPPORT:Z

.field public static final MTK_VOLTE_SUPPORT:Z

.field public static final MTK_WAPI_SUPPORT:Z

.field public static final MTK_WFD_SINK_SUPPORT:Z

.field public static final MTK_WFD_SINK_UIBC_SUPPORT:Z

.field public static final MTK_WFD_SUPPORT:Z

.field public static final MTK_WIFIWPSP2P_NFC_SUPPORT:Z

.field public static final MTK_WLAN_SUPPORT:Z

.field public static final PURE_AP_USE_EXTERNAL_MODEM:Z

.field public static final WIFI_WEP_KEY_ID_SET:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    const-string v0, "ro.mtk_gemini_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    .line 9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_3SIM_SUPPORT:Z

    .line 10
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_4SIM_SUPPORT:Z

    .line 11
    const-string v0, "ro.mtk_voice_unlock_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UNLOCK_SUPPORT:Z

    .line 12
    const-string v0, "ro.mtk_audio_profiles"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AUDIO_PROFILES:Z

    .line 13
    const-string v0, "ro.mtk_gmo_rom_optimize"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_ROM_OPTIMIZE:Z

    .line 14
    const-string v0, "ro.pure_ap_use_external_modem"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->PURE_AP_USE_EXTERNAL_MODEM:Z

    .line 15
    const-string v0, "ro.evdo_dt_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->EVDO_DT_SUPPORT:Z

    .line 16
    const-string v0, "ro.mtk_system_update_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    .line 17
    const-string v0, "ro.mtk_scomo_entry"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SCOMO_ENTRY:Z

    .line 18
    const-string v0, "ro.mtk_mdm_scomo"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_SCOMO:Z

    .line 19
    const-string v0, "ro.mtk_fota_entry"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_FOTA_ENTRY:Z

    .line 20
    const-string v0, "ro.mtk_mdm_fumo"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_FUMO:Z

    .line 21
    const-string v0, "ro.mtk_oma_drm_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DRM_APP:Z

    .line 22
    const-string v0, "ro.mtk_emmc_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_EMMC_SUPPORT:Z

    .line 23
    const-string v0, "ro.mtk_cache_merge_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_CACHE_MERGE_SUPPORT:Z

    .line 24
    const-string v0, "ro.mtk_tethering_eem_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERING_EEM_SUPPORT:Z

    .line 25
    const-string v0, "ro.mtk_tetheringipv6_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    .line 26
    const-string v0, "ro.mtk_nfc_addon_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    .line 27
    const-string v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_IPO_SUPPORT:Z

    .line 28
    const-string v0, "ro.mtk_owner_sim_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ONLY_OWNER_SIM_SUPPORT:Z

    .line 29
    const-string v0, "ro.mtk_2sdcard_swap"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    .line 30
    const-string v0, "ro.mtk_shared_sdcard"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    .line 31
    const-string v0, "ro.mtk_owner_sdcard_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OWNER_SDCARD_ONLY_SUPPORT:Z

    .line 32
    const-string v0, "ro.mtk_wfd_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    .line 33
    const-string v0, "ro.mtk_wlan_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WLAN_SUPPORT:Z

    .line 34
    const-string v0, "ro.mtk_gps_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    .line 35
    const-string v0, "ro.mtk_bt_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BT_SUPPORT:Z

    .line 36
    const-string v0, "ro.mtk_passpoint_r1_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PASSPOINT_R1_SUPPORT:Z

    .line 37
    const-string v0, "ro.mtk_dhcpv6c_wifi"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DHCPV6C_WIFI:Z

    .line 38
    const-string v0, "ro.mtk_eap_sim_aka"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    .line 39
    const-string v0, "ro.mtk_wapi_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    .line 40
    const-string v0, "ro.wifi_wep_key_id_set"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->WIFI_WEP_KEY_ID_SET:Z

    .line 41
    const-string v0, "ro.mtk_audenh_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AUDENH_SUPPORT:Z

    .line 42
    const-string v0, "ro.mtk_multisim_ringtone"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    .line 43
    const-string v0, "ro.mtk_gemini_3g_switch"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_3G_SWITCH:Z

    .line 44
    const-string v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    .line 45
    const-string v0, "ro.mtk_agps_app"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_AGPS_APP:Z

    .line 46
    const-string v0, "ro.mtk_omacp_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    .line 47
    const-string v0, "ro.mtk_beam_plus_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BEAM_PLUS_SUPPORT:Z

    .line 48
    const-string v0, "ro.mtk_clearmotion_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    .line 49
    const-string v0, "ro.mtk_thememanager_app"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_THEMEMANAGER_APP:Z

    .line 50
    const-string v0, "ro.mtk_pwr_save_switch"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_POWER_SAVING_SWITCH_UI_SUPPORT:Z

    .line 51
    const-string v0, "ro.mtk_bg_power_saving_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_SUPPORT:Z

    .line 52
    const-string v0, "ro.mtk_bg_power_saving_ui"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BG_POWER_SAVING_UI_SUPPORT:Z

    .line 53
    const-string v0, "ro.mtk_voice_ui_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    .line 54
    const-string v0, "ro.mtk_multi_patition"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTI_PARTITION_MOUNT_ONLY_SUPPORT:Z

    .line 55
    const-string v0, "ro.mtk_wifiwpsp2p_nfc_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    .line 56
    const-string v0, "ro.mtk_gmo_ram_optimize"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    .line 57
    const-string v0, "ro.mtk_wfd_sink_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_SUPPORT:Z

    .line 58
    const-string v0, "ro.mtk_wfd_sink_uibc_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    .line 59
    const-string v0, "ro.mtk_besloudness_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    .line 60
    const-string v0, "ro.mtk_bessurround_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESSURROUND_SUPPORT:Z

    .line 61
    const-string v0, "ro.mtk_miravision_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    .line 62
    const-string v0, "ro.mtk_tc1_feature"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    .line 63
    const-string v0, "ro.mtk_lossless_bt_audio"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_LOSSLESS_SUPPORT:Z

    .line 64
    const-string v0, "ro.mtk_volte_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    .line 65
    const-string v0, "ro.mtk_diso_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_DUAL_INPUT_CHARGER_SUPPORT:Z

    .line 66
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    .line 67
    const-string v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Lcom/mediatek/settings/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SVLTE_SUPPORT:Z

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 10
    goto/16 :goto_1
.end method

.method public static getExternalModemSlot()I
    .locals 2

    .prologue
    .line 74
    const-string v0, "ril.external.md"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static getValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
