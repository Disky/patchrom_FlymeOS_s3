.class public Lcom/mediatek/wifi/WifiConfigControllerExt;
.super Ljava/lang/Object;
.source "WifiConfigControllerExt.java"


# instance fields
.field private mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/extrasettings/wifi/WifiConfigController;

.field private mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mHex:Z

.field private mSimSlot:Landroid/widget/Spinner;

.field private mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mView:Landroid/view/View;

.field private mWEPKeyIndex:Landroid/widget/Spinner;

.field private mWEPKeyType:Landroid/widget/Spinner;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiClientCert:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/wifi/WifiConfigController;Lcom/android/extrasettings/wifi/WifiConfigUiBase;Landroid/view/View;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/extrasettings/wifi/WifiConfigController;
    .param p2, "configUi"    # Lcom/android/extrasettings/wifi/WifiConfigUiBase;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    .line 92
    iput-object p2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    .line 93
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 97
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 100
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 103
    :cond_0
    return-void
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private eapSimAkaConfig(Landroid/net/wifi/WifiConfiguration;Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "eapMethodSpinner"    # Landroid/widget/Spinner;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 422
    const-string v1, "WifiConfigControllerExt"

    const-string v2, "mSimSlot is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f100277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    .line 425
    :cond_0
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    .local v0, "strSimAka":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v1, :cond_1

    .line 427
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 428
    const-string v2, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "((String) mSimSlot.getSelectedItem()) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->simSlotConfig(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 431
    const-string v2, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, choose sim_slot"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, config.imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eap-sim, config.simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    return-void

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 434
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v1, "0"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 436
    const-string v1, "rild"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    goto :goto_0
.end method

.method private isWEPKeyValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 321
    :cond_1
    :goto_0
    return v2

    .line 307
    :cond_2
    const/4 v1, 0x0

    .line 308
    .local v1, "keyType":I
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 310
    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 312
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 313
    .local v0, "keyLength":I
    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 317
    :cond_5
    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/16 v4, 0xd

    if-eq v0, v4, :cond_6

    const/16 v4, 0x10

    if-ne v0, v4, :cond_7

    :cond_6
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    :cond_7
    move v2, v3

    .line 321
    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 9
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 746
    iget-object v5, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 747
    .local v3, "context":Landroid/content/Context;
    const v5, 0x7f0903b2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "unspecifiedCert":Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    const/16 v6, 0x3f2

    invoke-virtual {v5, p2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "certs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 751
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 759
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 761
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 762
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 763
    return-void

    .line 753
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 754
    .local v1, "array":[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 755
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    move-object v2, v1

    goto :goto_0
.end method

.method public static makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "simOperator"    # Ljava/lang/String;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "eapMethod"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 226
    if-nez p1, :cond_0

    .line 227
    const-string v1, "error"

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 232
    .local v0, "NAI":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 234
    const-string v1, "SIM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, "@wlan.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simOperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 247
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :goto_2
    const-string v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, "WifiConfigControllerExt"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 236
    :cond_2
    const-string v1, "AKA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 250
    :cond_3
    const/4 v1, 0x6

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "cert"    # Ljava/lang/String;

    .prologue
    .line 726
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 732
    if-eqz p2, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 736
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 737
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 743
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 736
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private simSlotConfig(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "strSimAka"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 448
    .local v0, "simSlot":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 449
    invoke-static {v0}, Lcom/mediatek/wifi/WifiUtils;->getSubId(I)I

    move-result v1

    .line 450
    .local v1, "subId":I
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 452
    const-string v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config.imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 454
    const-string v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config.simSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "rild"

    invoke-static {v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    .line 456
    const-string v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config.pcsc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rild"

    invoke-static {v4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private switchWlanSecuritySpinner(Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "securitySpinner"    # Landroid/widget/Spinner;

    .prologue
    const/16 v2, 0x8

    .line 203
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f10023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    return-void
.end method


# virtual methods
.method public addViews(Lcom/android/extrasettings/wifi/WifiConfigUiBase;Ljava/lang/String;)V
    .locals 6
    .param p1, "configUi"    # Lcom/android/extrasettings/wifi/WifiConfigUiBase;
    .param p2, "security"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f100235

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-interface {p1}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040100

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 193
    .local v1, "row":Landroid/view/View;
    const v2, 0x7f100038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {p1}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0903a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->getSecurityText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v2, 0x7f10011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method public addWifiConfigView(Z)V
    .locals 11
    .param p1, "edit"    # Z

    .prologue
    const/4 v10, -0x1

    .line 107
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-nez v7, :cond_9

    .line 109
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10024e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 110
    .local v4, "securityText":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7, v4}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 113
    const v6, 0x7f10023b

    .line 114
    .local v6, "viewId":I
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    if-eqz v7, :cond_7

    .line 115
    const-string v7, "persist.sys.wlan"

    const-string v8, "wifi-wapi"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "type":Ljava/lang/String;
    const-string v7, "wifi-wapi"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 118
    invoke-static {}, Lcom/mediatek/wifi/AccessPointExt;->isWFATestSupported()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    const v6, 0x7f100266

    .line 145
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    invoke-direct {p0, v7}, Lcom/mediatek/wifi/WifiConfigControllerExt;->switchWlanSecuritySpinner(Landroid/widget/Spinner;)V

    .line 174
    .end local v4    # "securityText":Landroid/widget/TextView;
    .end local v6    # "viewId":I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    check-cast v7, Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v10}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v10

    invoke-interface {v8, v7, p1, v9, v10}, Lcom/mediatek/settings/ext/IWifiExt;->addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;I)V

    .line 178
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 179
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v8, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v8}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSsid(Ljava/lang/String;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSecurity(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setNetworkId(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 186
    :cond_2
    return-void

    .line 123
    .restart local v4    # "securityText":Landroid/widget/TextView;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "viewId":I
    :cond_3
    const v6, 0x7f10023b

    goto :goto_0

    .line 125
    :cond_4
    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 126
    invoke-static {}, Lcom/mediatek/wifi/AccessPointExt;->isWFATestSupported()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    const v6, 0x7f100268

    goto :goto_0

    .line 131
    :cond_5
    const v6, 0x7f100267

    goto :goto_0

    .line 133
    :cond_6
    const-string v7, "wapi"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const v6, 0x7f100269

    goto/16 :goto_0

    .line 137
    .end local v5    # "type":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/mediatek/wifi/AccessPointExt;->isWFATestSupported()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 138
    const v6, 0x7f100268

    goto/16 :goto_0

    .line 142
    :cond_8
    const v6, 0x7f100267

    goto/16 :goto_0

    .line 147
    .end local v4    # "securityText":Landroid/widget/TextView;
    .end local v6    # "viewId":I
    :cond_9
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v1

    .line 148
    .local v1, "networkId":I
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 149
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v7, "WifiConfigControllerExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addWifiConfigView, networkId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v7, "WifiConfigControllerExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addWifiConfigView, config = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7, v1}, Lcom/mediatek/settings/ext/IWifiExt;->setAPNetworkId(I)V

    .line 154
    if-eq v1, v10, :cond_a

    if-eqz v0, :cond_a

    .line 155
    const-string v7, "WifiConfigControllerExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "priority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v7, v8}, Lcom/mediatek/settings/ext/IWifiExt;->setAPPriority(I)V

    .line 158
    :cond_a
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100271

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 160
    .local v2, "priorityLayout":Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v7}, Lcom/mediatek/settings/ext/IWifiExt;->getPriorityView()Landroid/view/View;

    move-result-object v3

    .line 161
    .local v3, "priorityView":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 162
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    :cond_b
    if-eq v1, v10, :cond_1

    .line 168
    if-nez p1, :cond_1

    .line 169
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public convertEapMethod(II)I
    .locals 6
    .param p1, "eapMethod"    # I
    .param p2, "getOrSet"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 894
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEapMethod, eapMethod =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEapMethod, FeatureOption.MTK_EAP_SIM_AKA =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEapMethod, FeatureOption.MTK_TC1_FEATURE =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    move v0, p1

    .line 898
    .local v0, "convertIndex":I
    if-nez p2, :cond_3

    .line 899
    if-lt p1, v4, :cond_0

    .line 900
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v1, :cond_1

    .line 901
    move v0, p1

    .line 931
    :cond_0
    :goto_0
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEapMethod, convertIndex =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return v0

    .line 902
    :cond_1
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v1, :cond_2

    .line 903
    if-lt p1, v5, :cond_0

    .line 904
    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    .line 906
    :cond_2
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v1, :cond_0

    .line 907
    if-lt p1, v5, :cond_0

    .line 908
    const-string v1, "WifiConfigControllerExt"

    const-string v2, "convertEapMethod, eapMethod is wrong, and we set eap-sim to adapt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x4

    goto :goto_0

    .line 914
    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 915
    if-lt p1, v4, :cond_0

    .line 916
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v1, :cond_4

    .line 917
    move v0, p1

    goto :goto_0

    .line 918
    :cond_4
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v1, :cond_5

    .line 919
    if-lt p1, v4, :cond_0

    .line 920
    move v0, p1

    goto :goto_0

    .line 922
    :cond_5
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v1, :cond_0

    .line 923
    if-lt p1, v5, :cond_0

    .line 924
    const-string v1, "WifiConfigControllerExt"

    const-string v2, "convertEapMethod, eapMethod is wrong, and we set eap-fast to adapt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public enableSubmitIfAppropriate(Landroid/widget/TextView;IZ)Z
    .locals 3
    .param p1, "passwordView"    # Landroid/widget/TextView;
    .param p2, "accessPointSecurity"    # I
    .param p3, "pwInvalid"    # Z

    .prologue
    const/16 v2, 0x8

    .line 273
    move v0, p3

    .line 275
    .local v0, "passwordInvalid":Z
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->isWEPKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v2, :cond_3

    const/16 v1, 0x40

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 283
    :cond_3
    const/4 v0, 0x1

    .line 287
    :cond_4
    const/4 v1, 0x7

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_7

    .line 291
    :cond_6
    const/4 v0, 0x1

    .line 294
    :cond_7
    return v0
.end method

.method public getEapMethod(I)I
    .locals 4
    .param p1, "eapMethod"    # I

    .prologue
    .line 804
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEapMethod, eapMethod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move v0, p1

    .line 806
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 810
    :cond_0
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEapMethod, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v0
.end method

.method public getEapMethodbySpinnerPos(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 827
    move v0, p1

    .line 828
    .local v0, "method":I
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 832
    :cond_0
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSecurityFields modify pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSecurityFields modify method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v0
.end method

.method public getSecurity(I)I
    .locals 3
    .param p1, "accessPointSecurity"    # I

    .prologue
    .line 777
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecurity, accessPointSecurity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.wlan"

    const-string v1, "wifi-wapi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    if-lez p1, :cond_0

    .line 786
    add-int/lit8 p1, p1, 0x5

    .line 798
    :cond_0
    :goto_0
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecurity, accessPointSecurity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return p1

    .line 789
    :cond_1
    invoke-static {}, Lcom/mediatek/wifi/AccessPointExt;->isWFATestSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 791
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 794
    :cond_2
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 795
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public restrictIpv4View(Landroid/net/wifi/WifiConfiguration;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 845
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f100261

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 846
    .local v6, "ipAddressView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f100262

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 847
    .local v5, "gatewayView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f100263

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 848
    .local v7, "networkPrefixLengthView":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f100264

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 849
    .local v0, "dns1View":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v10, 0x7f100265

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 851
    .local v1, "dns2View":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    .line 852
    .local v8, "staticConfig":Landroid/net/StaticIpConfiguration;
    const-string v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "staticConfig = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    if-eqz v8, :cond_4

    .line 854
    const-string v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IpAddressView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_0

    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_0

    .line 856
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    :cond_0
    const-string v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gatewayView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    .line 864
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    :cond_1
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 868
    .local v2, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 869
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 870
    .local v3, "dsn1":Ljava/net/InetAddress;
    const-string v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dsn1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    instance-of v9, v3, Ljava/net/Inet4Address;

    if-eqz v9, :cond_2

    .line 872
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    .end local v3    # "dsn1":Ljava/net/InetAddress;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 877
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 878
    .local v4, "dsn2":Ljava/net/InetAddress;
    const-string v9, "WifiConfigControllerExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dsn2 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    instance-of v9, v4, Ljava/net/Inet4Address;

    if-eqz v9, :cond_3

    .line 880
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    .end local v2    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v4    # "dsn2":Ljava/net/InetAddress;
    :cond_4
    return-void
.end method

.method public setConfig(Landroid/net/wifi/WifiConfiguration;ILandroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "accessPointSecurity"    # I
    .param p3, "passwordView"    # Landroid/widget/TextView;
    .param p4, "eapMethodSpinner"    # Landroid/widget/Spinner;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x22

    .line 327
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v3, :cond_0

    .line 328
    const-string v3, "none"

    invoke-static {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 329
    const-string v3, "-1"

    invoke-static {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 330
    const-string v3, "none"

    invoke-static {v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v3}, Lcom/mediatek/settings/ext/IWifiExt;->getPriority()I

    move-result v3

    if-ltz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v3}, Lcom/mediatek/settings/ext/IWifiExt;->getPriority()I

    move-result v3

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 338
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 414
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 340
    :pswitch_1
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 342
    .local v1, "length":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "password":Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, "keyIndex":I
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyIndex:Landroid/widget/Spinner;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 347
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 350
    :cond_3
    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    :cond_4
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 359
    :goto_1
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_0

    .line 356
    :cond_5
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_1

    .line 364
    .end local v0    # "keyIndex":I
    .end local v1    # "length":I
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 365
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    .restart local v2    # "password":Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 375
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_3
    const-string v4, "AKA"

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v4, "SIM"

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    :cond_7
    invoke-direct {p0, p1, p4}, Lcom/mediatek/wifi/WifiConfigControllerExt;->eapSimAkaConfig(Landroid/net/wifi/WifiConfiguration;Landroid/widget/Spinner;)V

    .line 378
    const-string v3, "WifiConfigControllerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eap-sim/aka, config.toString(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 384
    :pswitch_4
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 385
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 386
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 387
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 388
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2    # "password":Ljava/lang/String;
    const-string v3, "WifiConfigControllerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfig(), mHex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-boolean v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    if-eqz v3, :cond_8

    .line 392
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 394
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 400
    .end local v2    # "password":Ljava/lang/String;
    :pswitch_5
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 401
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 402
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 403
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 404
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateWapiAlias(Ljava/lang/String;)V

    .line 406
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateWapiAlias(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_9
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 406
    :cond_a
    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setEapMethodFields(Z)V
    .locals 6
    .param p1, "edit"    # Z

    .prologue
    const/16 v5, 0x8

    .line 496
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f100250

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 499
    .local v1, "eapMethodSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v0

    .line 501
    .local v0, "eapMethod":I
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 507
    :cond_0
    const-string v2, "WifiConfigControllerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSecurityFields modify method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f100278

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f100279

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f10027a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v3, 0x7f10027b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 517
    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v3, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v3}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSsid(Ljava/lang/String;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSecurity(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setNetworkId(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 524
    :cond_2
    return-void
.end method

.method public setEapMethodSelection(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "eapMethodSpinner"    # Landroid/widget/Spinner;
    .param p2, "eapMethod"    # I

    .prologue
    .line 815
    move v0, p2

    .line 816
    .local v0, "eapMethodPos":I
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v2, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v3}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v3

    invoke-interface {v1, p2, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getPosByEapMethod(ILjava/lang/String;I)I

    move-result v0

    .line 820
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 821
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[skyfyx]showSecurityFields modify pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[skyfyx]showSecurityFields modify method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method

.method public setEapmethodSpinnerAdapter()V
    .locals 9

    .prologue
    .line 462
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v7, 0x7f100250

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 466
    .local v3, "eapMethodSpinner":Landroid/widget/Spinner;
    const-string v6, "WifiConfigControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSecurityFields, FeatureOption.MTK_EAP_SIM_AKA =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v6, "WifiConfigControllerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSecurityFields, FeatureOption.MTK_TC1_FEATURE =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v6, :cond_3

    .line 469
    :cond_0
    const v5, 0x7f0b003b

    .line 470
    .local v5, "spinnerId":I
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v6, :cond_4

    .line 471
    const v5, 0x7f0b0043

    .line 477
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 478
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "eapString":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 480
    .local v2, "eapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 482
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v6}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 483
    iget-object v6, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v8}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v8

    invoke-interface {v6, v0, v7, v8}, Lcom/mediatek/settings/ext/IWifiExt;->setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V

    .line 488
    :cond_2
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 490
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 492
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "eapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "eapString":[Ljava/lang/String;
    .end local v5    # "spinnerId":I
    :cond_3
    return-void

    .line 472
    .restart local v5    # "spinnerId":I
    :cond_4
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_EAP_SIM_AKA:Z

    if-eqz v6, :cond_5

    .line 473
    const v5, 0x7f0b0041

    goto :goto_0

    .line 474
    :cond_5
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_TC1_FEATURE:Z

    if-eqz v6, :cond_1

    .line 475
    const v5, 0x7f0b0042

    goto :goto_0
.end method

.method public setGEMINI()V
    .locals 21

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100250

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 529
    .local v9, "eapMethodSpinner":Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100255

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 530
    .local v6, "eapAnonymousView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100217

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 531
    .local v11, "passwordView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100254

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 533
    .local v7, "eapIdentityView":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v8

    .line 535
    .local v8, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v8

    .line 542
    :cond_0
    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 544
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 545
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f10023d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 548
    sget-boolean v17, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    if-eqz v17, :cond_4

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100276

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100277

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 553
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0044

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 555
    .local v16, "tempSimAkaMethods":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v15

    .line 556
    .local v15, "sum":I
    const-string v17, "WifiConfigControllerExt"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the num of sim slot is :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 558
    .local v12, "simAkaMethods":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    .line 559
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    .line 560
    aget-object v17, v16, v10

    aput-object v17, v12, v10

    .line 558
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 562
    :cond_2
    const/16 v17, 0x1

    aget-object v17, v16, v17

    const-string v18, "1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v10

    goto :goto_1

    .line 565
    :cond_3
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v17, 0x1090008

    move/from16 v0, v17

    invoke-direct {v3, v5, v0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 567
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v17, 0x1090009

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 574
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_4

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 575
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 576
    .local v13, "simslots":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 577
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    .line 578
    .local v14, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 595
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "context":Landroid/content/Context;
    .end local v10    # "i":I
    .end local v12    # "simAkaMethods":[Ljava/lang/String;
    .end local v13    # "simslots":[Ljava/lang/String;
    .end local v14    # "slot":I
    .end local v15    # "sum":I
    .end local v16    # "tempSimAkaMethods":[Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    .line 597
    invoke-virtual {v9}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    .line 598
    .restart local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 599
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v10

    .line 600
    .restart local v10    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v10, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v10

    .line 603
    :cond_5
    const-string v17, "WifiConfigControllerExt"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showSecurityFields set Anonymous to null method = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    if-eqz v3, :cond_6

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v10, :cond_6

    .line 606
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "i":I
    :cond_6
    return-void

    .line 584
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 585
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f10023d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 588
    sget-boolean v17, Lcom/mediatek/settings/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    if-eqz v17, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100276

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public setHex(Z)V
    .locals 0
    .param p1, "hexEnabled"    # Z

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    .line 774
    return-void
.end method

.method public setHexCheckBoxListener()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f10026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 723
    return-void
.end method

.method public setProxyText(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 840
    const v1, 0x7f100284

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 841
    .local v0, "proxyText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IWifiExt;->setProxyText(Landroid/widget/TextView;)V

    .line 842
    return-void
.end method

.method public setWapiCertSpinnerInvisible(I)V
    .locals 2
    .param p1, "accessPointSecurity"    # I

    .prologue
    .line 714
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f10026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :cond_0
    return-void
.end method

.method public showSecurityFields(IZ)Z
    .locals 10
    .param p1, "accessPointSecurity"    # I
    .param p2, "edit"    # Z

    .prologue
    .line 612
    const-string v7, "WifiConfigControllerExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showSecurityFields, accessPointSecurity = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v7, "WifiConfigControllerExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showSecurityFields, edit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100250

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 615
    .local v5, "eapMethodSpinner":Landroid/widget/Spinner;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100255

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 616
    .local v2, "eapAnonymousView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100217

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 617
    .local v6, "passwordView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100254

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 619
    .local v3, "eapIdentityView":Landroid/widget/TextView;
    const/4 v7, 0x5

    if-eq p1, v7, :cond_0

    .line 620
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100254

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 621
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10023d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 623
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10024f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :cond_0
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 629
    const/4 v7, 0x6

    if-ne p1, v7, :cond_1

    .line 630
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iget-boolean v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mHex:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 635
    :cond_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->WIFI_WEP_KEY_ID_SET:Z

    if-eqz v7, :cond_2

    .line 637
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10027c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100281

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    .line 639
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10027e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyIndex:Landroid/widget/Spinner;

    .line 640
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    if-eqz v7, :cond_2

    .line 641
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWEPKeyType:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 646
    :cond_2
    const/4 v7, 0x7

    if-ne p1, v7, :cond_4

    .line 647
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10024a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    .line 651
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100270

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    .line 652
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 653
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 654
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v8, "WAPISERVERCERT_"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wifi/WifiConfigControllerExt;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 655
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    const-string v8, "WAPIUSERCERT_"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wifi/WifiConfigControllerExt;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 657
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 658
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 659
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v8, "WAPISERVERCERT_"

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateWapiAlias()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mWapiClientCert:Landroid/widget/Spinner;

    const-string v8, "WAPIUSERCERT_"

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateWapiAlias()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v7, 0x1

    .line 710
    :goto_0
    return v7

    .line 668
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiConfigControllerExt;->setHexCheckBoxListener()V

    .line 670
    const/4 v7, 0x5

    if-eq p1, v7, :cond_5

    .line 672
    const/4 v7, 0x0

    goto :goto_0

    .line 676
    :cond_5
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f10026a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100272

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, "advancedView":Landroid/view/View;
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_6

    .line 679
    const-string v7, "WifiConfigControllerExt"

    const-string v8, "add network,Security is AccessPoint.SECURITY_EAP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100272

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100273

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 684
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100273

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 686
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v8, 0x7f100274

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_6
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/mediatek/wifi/WifiConfigControllerExt;->convertEapMethod(II)I

    move-result v4

    .line 693
    .local v4, "eapMethod":I
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 694
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v8, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v8}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v9

    invoke-interface {v7, v4, v8, v9}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v4

    .line 701
    :cond_7
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v7}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/extrasettings/wifi/AccessPoint;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 702
    iget-object v7, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v8, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v8}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSsid(Ljava/lang/String;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointSecurity()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setSecurity(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v9}, Lcom/android/extrasettings/wifi/WifiConfigController;->getAccessPointNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setNetworkId(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/extrasettings/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/extrasettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 710
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
