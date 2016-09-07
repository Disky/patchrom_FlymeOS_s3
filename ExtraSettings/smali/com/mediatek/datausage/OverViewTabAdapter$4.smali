.class Lcom/mediatek/datausage/OverViewTabAdapter$4;
.super Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
.source "OverViewTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/datausage/OverViewTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datausage/OverViewTabAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-direct {p0}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavingState(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    const-string v0, "OverViewTabAdapter"

    const-string v1, "Loader service onSavingState"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    return-void
.end method

.method public onTunnelState(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    const-string v0, "OverViewTabAdapter"

    const-string v1, "Loader service onTunnelState"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void
.end method
