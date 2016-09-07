.class public Lcom/mediatek/settings/sim/MsimRadioValueObserver;
.super Ljava/lang/Object;
.source "MsimRadioValueObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

.field private mMsimModeValue:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;-><init>(Lcom/mediatek/settings/sim/MsimRadioValueObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    .line 30
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    return-object v0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    const-string v1, "msim_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const-string v0, "MsimRadioValueObserver"

    const-string v1, "observer is null"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "MsimRadioValueObserver"

    const-string v1, "observer is null"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public registerMsimObserver(Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .line 36
    invoke-direct {p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->registerContentObserver()V

    .line 37
    return-void
.end method

.method public ungisterMsimObserver()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .line 41
    invoke-direct {p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->unregisterContentObserver()V

    .line 42
    return-void
.end method
