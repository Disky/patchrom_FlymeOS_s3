.class public Lcom/mediatek/wifi/WifiSettingsExt;
.super Ljava/lang/Object;
.source "WifiSettingsExt.java"


# instance fields
.field private mActivity:Landroid/content/Context;

.field mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

.field private mScanResultsAvailable:Z

.field private mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mScanResultsAvailable:Z

    .line 65
    iput-object p1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mediatek/wifi/AccessPoint;
    .locals 1
    .param p0, "apSsid"    # Ljava/lang/String;
    .param p1, "apBssid"    # Ljava/lang/String;
    .param p2, "apNetworkId"    # I
    .param p3, "apWpsAvailable"    # Z

    .prologue
    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->build(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mediatek/wifi/AccessPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "isConfiged"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V

    .line 300
    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    .line 305
    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    .line 309
    return-void
.end method

.method public getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->getAccessPointsCount(Landroid/preference/PreferenceScreen;)I

    move-result v0

    return v0
.end method

.method public hasChangedSimCard(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "security"    # I

    .prologue
    const/4 v10, 0x1

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "result":Z
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v7, :cond_3

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    const-string v8, "\"none\""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 224
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v5, 0x0

    .line 227
    .local v5, "slot":I
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "simslots":[Ljava/lang/String;
    array-length v7, v4

    if-le v7, v10, :cond_0

    .line 229
    aget-object v7, v4, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 233
    .local v1, "imsiStr":Ljava/lang/String;
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 234
    .local v0, "eapMethod":I
    invoke-static {v5}, Lcom/mediatek/wifi/WifiUtils;->getSubId(I)I

    move-result v6

    .line 235
    .local v6, "subId":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 236
    const/4 v7, 0x0

    .line 261
    .end local v0    # "eapMethod":I
    .end local v1    # "imsiStr":Ljava/lang/String;
    .end local v4    # "simslots":[Ljava/lang/String;
    .end local v5    # "slot":I
    .end local v6    # "subId":I
    :goto_0
    return v7

    .line 237
    .restart local v0    # "eapMethod":I
    .restart local v1    # "imsiStr":Ljava/lang/String;
    .restart local v4    # "simslots":[Ljava/lang/String;
    .restart local v5    # "slot":I
    .restart local v6    # "subId":I
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    .line 238
    iget-object v7, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SIM"

    invoke-static {v7, v8, v9}, Lcom/mediatek/wifi/WifiConfigControllerExt;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_2
    :goto_1
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeNAI() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTelephonyManager.getSubscriberId(subId) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeNAI() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 249
    const-string v7, "WifiSettingsExt"

    const-string v8, "user doesn\'t change or remove sim card"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "eapMethod":I
    .end local v1    # "imsiStr":Ljava/lang/String;
    .end local v4    # "simslots":[Ljava/lang/String;
    .end local v5    # "slot":I
    .end local v6    # "subId":I
    :cond_3
    :goto_2
    move v7, v2

    .line 261
    goto :goto_0

    .line 240
    .restart local v0    # "eapMethod":I
    .restart local v1    # "imsiStr":Ljava/lang/String;
    .restart local v4    # "simslots":[Ljava/lang/String;
    .restart local v5    # "slot":I
    .restart local v6    # "subId":I
    :cond_4
    const/4 v7, 0x5

    if-ne v0, v7, :cond_2

    .line 241
    iget-object v7, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "AKA"

    invoke-static {v7, v8, v9}, Lcom/mediatek/wifi/WifiConfigControllerExt;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 251
    :cond_5
    iget-object v7, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v7, p3, p4}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isTustAP(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 252
    const-string v7, "WifiSettingsExt"

    const-string v8, "user change or remove sim card"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v3

    .line 254
    .local v3, "s":Z
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeNetwork: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v3

    .line 256
    const-string v7, "WifiSettingsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveNetworks(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public hasSimAkaProblem(Landroid/net/wifi/WifiConfiguration;Landroid/content/ContentResolver;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 271
    const-string v2, "WifiSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSimAkaProblem, config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz p1, :cond_3

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 275
    :cond_0
    const-string v2, "airplane_mode_on"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    const v2, 0x7f090046

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    :goto_0
    return v0

    .line 280
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    const-string v3, "\"error\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    const v2, 0x7f090047

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_2
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    if-eqz v2, :cond_3

    const-string v2, "\"none\""

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    iget-object v1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    const v2, 0x7f090048

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 291
    goto :goto_0
.end method

.method public onActivityCreated(Lcom/android/extrasettings/SettingsPreferenceFragment;Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/extrasettings/SettingsPreferenceFragment;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 78
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 80
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 81
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->registerPriorityObserver(Landroid/content/ContentResolver;)V

    .line 88
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addCategories(Landroid/preference/PreferenceScreen;)V

    .line 94
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "networkId"    # I

    .prologue
    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->contextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->disconnect(I)V

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 73
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/net/NetworkInfo$DetailedState;Lcom/mediatek/wifi/AccessPoint;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "accessPoint"    # Lcom/mediatek/wifi/AccessPoint;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    const/16 v1, 0x65

    invoke-interface {v0, p1, v1, p2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V

    .line 144
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-virtual {v0, p1, p3}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->createContextMenu(Landroid/view/ContextMenu;Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(ZLandroid/view/Menu;)V
    .locals 1
    .param p1, "wifiIsEnabled"    # Z
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-virtual {v0, p2}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->createOptionsMenu(Landroid/view/Menu;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 127
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WIFIWPSP2P_NFC_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mWpsP2pEmSettings:Lcom/mediatek/wifi/WifiWpsP2pEmSettings;

    invoke-virtual {v0}, Lcom/mediatek/wifi/WifiWpsP2pEmSettings;->resume()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriority()V

    .line 111
    return-void
.end method

.method public recordPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->recordPriority(I)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->recordPriority(I)V

    goto :goto_0
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->refreshCategory(Landroid/preference/PreferenceScreen;)V

    .line 313
    return-void
.end method

.method public submit(Landroid/net/wifi/WifiConfiguration;Landroid/preference/Preference;ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "accessPoint"    # Landroid/preference/Preference;
    .param p3, "networkId"    # I
    .param p4, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 185
    const-string v0, "WifiSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit, config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez p1, :cond_0

    .line 191
    const-string v0, "WifiSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit, networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    const-string v0, "WifiSettingsExt"

    const-string v1, "submit, setLastConnectedConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 205
    return-void

    .line 192
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 194
    const-string v0, "WifiSettingsExt"

    const-string v1, "submit, setNewPriority"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setNewPriority(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "WifiSettingsExt"

    const-string v1, "submit, updatePriorityAfterSubmit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->unregisterPriorityObserver(Landroid/content/ContentResolver;)V

    .line 214
    return-void
.end method

.method public updatePriority()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "WifiSettingsExt"

    const-string v1, "mConnectListener or mSaveListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mediatek/wifi/WifiSettingsExt;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriority()V

    .line 100
    return-void
.end method
