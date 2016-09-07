.class Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;
.super Ljava/lang/Object;
.source "UnLockSubDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 54
    const-string v0, "UnLockSubDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(),mSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # getter for: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$000(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # getter for: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$100(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # invokes: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->finishActivity()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$200(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V

    .line 56
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # getter for: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mCellConnMgr:Lcom/mediatek/internal/telephony/CellConnMgr;
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$300(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)Lcom/mediatek/internal/telephony/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # getter for: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mSubId:I
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$000(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$1;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # getter for: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->mState:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$100(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/CellConnMgr;->handleRequest(II)V

    .line 57
    return-void
.end method
