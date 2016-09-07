.class Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;
.super Landroid/database/ContentObserver;
.source "MsimRadioValueObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/MsimRadioValueObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/MsimRadioValueObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 18
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    # getter for: Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->access$000(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "msim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 20
    .local v0, "mSimMode":I
    const-string v1, "MsimRadioValueObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMsimModeValue... mSimMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    # getter for: Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;
    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->access$100(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;->this$0:Lcom/mediatek/settings/sim/MsimRadioValueObserver;

    # getter for: Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;
    invoke-static {v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->access$100(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;->onChange(IZ)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v1, "MsimRadioValueObserver"

    const-string v2, "mListener has been ungistered"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
