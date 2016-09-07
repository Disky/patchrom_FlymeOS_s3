.class Lcom/mediatek/datausage/OverViewTabAdapter$2;
.super Ljava/lang/Object;
.source "OverViewTabAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/datausage/OverViewTabAdapter;->inflateLockScreenView(Landroid/view/LayoutInflater;)V
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
    .line 614
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$2;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 617
    const-string v1, "OverViewTabAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data Saving isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$2;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_0

    .line 620
    if-eqz p2, :cond_1

    .line 621
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$2;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    invoke-interface {v1}, Lcom/mediatek/common/operamax/ILoaderService;->startSaving()V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$2;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    invoke-interface {v1}, Lcom/mediatek/common/operamax/ILoaderService;->stopSaving()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OverViewTabAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
