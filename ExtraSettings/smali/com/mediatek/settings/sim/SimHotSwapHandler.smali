.class public Lcom/mediatek/settings/sim/SimHotSwapHandler;
.super Ljava/lang/Object;
.source "SimHotSwapHandler.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionIdListCache:[I

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;-><init>(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler$2;-><init>(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 33
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    .line 34
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 35
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 37
    const-string v0, "Cache list: "

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->print(Ljava/lang/String;[I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->handleHotSwap()V

    return-void
.end method

.method private handleHotSwap()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 58
    const-string v2, "SimHotSwapHandler"

    const-string v3, "activiyt is null"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 62
    .local v1, "subscriptionIdListCurrent":[I
    const-string v2, "current subId list: "

    invoke-direct {p0, v2, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->print(Ljava/lang/String;[I)V

    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, "isEqual":Z
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 65
    const-string v2, "SimHotSwapHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEqual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private print(Ljava/lang/String;[I)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lists"    # [I

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 83
    .local v1, "i":I
    const-string v4, "SimHotSwapHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v4, "SimHotSwapHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method public registerOnSubscriptionsChangedListener()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "SimHotSwapHandler"

    const-string v1, "register..."

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    :cond_0
    return-void
.end method

.method public unregisterOnSubscriptionsChangedListener()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "SimHotSwapHandler"

    const-string v1, "removeOnSubscriptionsChangedListener"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    :cond_0
    return-void
.end method
