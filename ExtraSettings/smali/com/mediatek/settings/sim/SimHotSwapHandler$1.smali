.class Lcom/mediatek/settings/sim/SimHotSwapHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SimHotSwapHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/sim/SimHotSwapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/SimHotSwapHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;->this$0:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;->this$0:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    # invokes: Lcom/mediatek/settings/sim/SimHotSwapHandler;->handleHotSwap()V
    invoke-static {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->access$000(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    .line 26
    return-void
.end method