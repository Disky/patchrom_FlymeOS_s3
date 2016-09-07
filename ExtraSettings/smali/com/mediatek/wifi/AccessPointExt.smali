.class public Lcom/mediatek/wifi/AccessPointExt;
.super Ljava/lang/Object;
.source "AccessPointExt.java"


# static fields
.field private static sExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private static sWFATestFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/mediatek/wifi/AccessPointExt;->sWFATestFlag:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/mediatek/wifi/AccessPointExt;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/mediatek/wifi/AccessPointExt;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/AccessPointExt;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 40
    :cond_0
    return-void
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x6

    .line 72
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x7

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x6

    .line 49
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    return v0

    .line 53
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x7

    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isWFATestSupported()Z
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/mediatek/wifi/AccessPointExt;->sWFATestFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "persist.radio.wifi.wpa2wpaalone"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wifi/AccessPointExt;->sWFATestFlag:Ljava/lang/String;

    .line 99
    const-string v0, "AccessPointExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWFATestSupported(), sWFATestFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wifi/AccessPointExt;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const-string v0, "true"

    sget-object v1, Lcom/mediatek/wifi/AccessPointExt;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # I
    .param p3, "otherSsid"    # Ljava/lang/String;
    .param p4, "otherSecurity"    # I

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/wifi/AccessPointExt;->sExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/settings/ext/IWifiExt;->getApOrder(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSecurityString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "security"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    const v0, 0x7f090049

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_1
    const v0, 0x7f09004a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isOpenApWPSSupported(Z)Z
    .locals 4
    .param p1, "wpsAvailable"    # Z

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "supported":Z
    if-eqz p1, :cond_0

    .line 115
    const-string v1, "true"

    const-string v2, "mediatek.wlan.openap.wps"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    :cond_0
    return v0
.end method
