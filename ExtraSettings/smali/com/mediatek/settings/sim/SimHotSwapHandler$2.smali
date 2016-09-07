.class Lcom/mediatek/settings/sim/SimHotSwapHandler$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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
    .line 72
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler$2;->this$0:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "SimHotSwapHandler"

    const-string v1, "onSubscriptionsChanged()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler$2;->this$0:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    # invokes: Lcom/mediatek/settings/sim/SimHotSwapHandler;->handleHotSwap()V
    invoke-static {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->access$000(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    .line 77
    return-void
.end method
