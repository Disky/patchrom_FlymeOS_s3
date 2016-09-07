.class public Lcom/mediatek/settings/SubscriberPowerStateListener;
.super Ljava/lang/Object;
.source "SubscriberPowerStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mServiceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/SubscriberPowerStateListener;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/SubscriberPowerStateListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/SubscriberPowerStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/SubscriberPowerStateListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->stopPhoneRegisterListener()V

    return-void
.end method

.method private isAllSimPowerOff()Z
    .locals 7

    .prologue
    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "allPowerOff":Z
    const/4 v2, 0x0

    .line 176
    .local v2, "state":I
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 177
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 178
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    .line 180
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    .end local v3    # "subId":Ljava/lang/Integer;
    :cond_1
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allPowerOff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v0
.end method

.method private isAllSimPowerOn()Z
    .locals 7

    .prologue
    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "allPowerOn":Z
    const/4 v2, 0x0

    .line 147
    .local v2, "state":I
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 148
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 149
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/SubscriberPowerStateListener;->isSetRadioPowerOff(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    .end local v3    # "subId":Ljava/lang/Integer;
    :cond_1
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allPowerOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0
.end method

.method private isSetRadioPowerOff(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 162
    .local v2, "slotId":I
    iget-object v3, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "msim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "currentSimMode":I
    shl-int v3, v1, v2

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    .line 165
    .local v1, "isPowerOff":Z
    :goto_0
    const-string v3, "SubscriberPowerStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "soltId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPowerOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1

    .line 164
    .end local v1    # "isPowerOff":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubscriberChanged(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 109
    .local v1, "isSubModified":Z
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 110
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 111
    .local v3, "oldSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    .local v2, "newSize":I
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eq v3, v2, :cond_1

    .line 114
    const/4 v1, 0x1

    .line 126
    .end local v2    # "newSize":I
    .end local v3    # "oldSize":I
    :cond_0
    :goto_0
    const-string v4, "SubscriberPowerStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSubModified = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 116
    .restart local v2    # "newSize":I
    .restart local v3    # "oldSize":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v5, v4, :cond_2

    .line 119
    const/4 v1, 0x1

    .line 116
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    .end local v2    # "newSize":I
    .end local v3    # "oldSize":I
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private stopPhoneRegisterListener()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 192
    .local v0, "airplaneModeEnabled":Z
    const-string v1, "SubscriberPowerStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPhoneRegisterListener airplaneModeEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->isAllSimPowerOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;

    invoke-interface {v1}, Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;->onAllPoweredOff()V

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->unRegisterListener()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->isAllSimPowerOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;

    invoke-interface {v1}, Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;->onAllPoweredOn()V

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->unRegisterListener()V

    goto :goto_0
.end method


# virtual methods
.method public registerListener()V
    .locals 7

    .prologue
    .line 55
    const-string v4, "SubscriberPowerStateListener"

    const-string v5, "Start to register state listener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->unRegisterListener()V

    .line 58
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "size":I
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 63
    new-array v4, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 64
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "index":I
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mSubInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 67
    .local v2, "record":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/mediatek/settings/SubscriberPowerStateListener$1;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-direct {v5, p0, v6, v2}, Lcom/mediatek/settings/SubscriberPowerStateListener$1;-><init>(Lcom/mediatek/settings/SubscriberPowerStateListener;ILandroid/telephony/SubscriptionInfo;)V

    aput-object v5, v4, v1

    .line 79
    iget-object v4, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_0

    .line 86
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_0
    if-nez v3, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->stopPhoneRegisterListener()V

    .line 89
    :cond_1
    return-void
.end method

.method public setRadioPowerStateChangeListener(Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mListener:Lcom/mediatek/settings/SubscriberPowerStateListener$onRadioPowerStateChangeListener;

    .line 45
    return-void
.end method

.method public unRegisterListener()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "SubscriberPowerStateListener"

    const-string v2, "unRegisterListener and clear Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "index":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 140
    return-void
.end method

.method public updateSubscribers()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mServiceState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "SubscriberPowerStateListener"

    const-string v2, "updateSubscribers since some cases cause sub modify, need to re-register listener for sub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/mediatek/settings/SubscriberPowerStateListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->isSubscriberChanged(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/settings/SubscriberPowerStateListener;->registerListener()V

    .line 104
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    return-void
.end method
