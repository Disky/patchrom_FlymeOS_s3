.class Lcom/mediatek/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "WifiWpsP2pEmSettings.java"


# instance fields
.field bssid:Ljava/lang/String;

.field networkId:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "apSsid"    # Ljava/lang/String;
    .param p2, "apBssid"    # Ljava/lang/String;
    .param p3, "apNetworkId"    # I
    .param p4, "apWpsAvailable"    # Z

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wifi/AccessPoint;->wpsAvailable:Z

    .line 349
    const-string v0, "WifiWpsP2pEmSettings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessPoint, ssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,bssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,wpsAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-object p1, p0, Lcom/mediatek/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 352
    iput-object p2, p0, Lcom/mediatek/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 353
    iput p3, p0, Lcom/mediatek/wifi/AccessPoint;->networkId:I

    .line 354
    iput-boolean p4, p0, Lcom/mediatek/wifi/AccessPoint;->wpsAvailable:Z

    .line 355
    return-void
.end method
