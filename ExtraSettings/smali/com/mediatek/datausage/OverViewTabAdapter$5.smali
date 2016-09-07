.class Lcom/mediatek/datausage/OverViewTabAdapter$5;
.super Ljava/lang/Object;
.source "OverViewTabAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 679
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 682
    const-string v1, "OverViewTabAdapter"

    const-string v2, "Loader service Connected"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-static {p2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderService;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    # getter for: Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
    invoke-static {v2}, Lcom/mediatek/datausage/OverViewTabAdapter;->access$200(Lcom/mediatek/datausage/OverViewTabAdapter;)Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/operamax/ILoaderService;->registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 693
    const-string v1, "OverViewTabAdapter"

    const-string v2, "Loader service DisConnected"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    # getter for: Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
    invoke-static {v2}, Lcom/mediatek/datausage/OverViewTabAdapter;->access$200(Lcom/mediatek/datausage/OverViewTabAdapter;)Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/operamax/ILoaderService;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$5;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    .line 700
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
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
