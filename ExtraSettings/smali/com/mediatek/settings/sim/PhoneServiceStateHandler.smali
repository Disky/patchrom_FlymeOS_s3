.class public Lcom/mediatek/settings/sim/PhoneServiceStateHandler;
.super Ljava/lang/Object;
.source "PhoneServiceStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId:I

.field private mSubLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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
    .line 33
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-direct {p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->initSelctableSubInfos()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    iput p2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubId:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    return-object v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;-><init>(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;II)V

    return-object v0
.end method

.method private initSelctableSubInfos()V
    .locals 5

    .prologue
    .line 49
    iget-object v3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 50
    .local v1, "numSlots":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubLists:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 52
    iget-object v3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 53
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubLists:Ljava/util/List;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 79
    .local v1, "subId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerPhoneStateListener(I)V

    goto :goto_0

    .line 81
    .end local v1    # "subId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private registerPhoneStateListener(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 84
    const-string v1, "PhoneServiceStateHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register PhoneStateListener, subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    .line 87
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 92
    .end local v0    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v1, "PhoneServiceStateHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 108
    iget-object v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterPhoneStateListener(I)V

    goto :goto_0

    .line 111
    .end local v1    # "subId":I
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 114
    const-string v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register unregisterPhoneStateListener subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addPhoneServiceStateListener(Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .line 61
    iget v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubId:I

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerPhoneStateListener(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerPhoneStateListener()V

    goto :goto_0
.end method

.method public removePhoneServiceSateListener()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .line 70
    iget v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubId:I

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterPhoneStateListener(I)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterPhoneStateListener()V

    goto :goto_0
.end method
