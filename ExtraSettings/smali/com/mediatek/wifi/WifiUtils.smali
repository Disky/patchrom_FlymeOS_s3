.class public Lcom/mediatek/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static getCMCC()Z
    .locals 2

    .prologue
    .line 28
    const-string v0, "OP01"

    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getSubId(I)I
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 19
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 20
    .local v0, "SubIds":[I
    if-eqz v0, :cond_0

    .line 21
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 23
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
