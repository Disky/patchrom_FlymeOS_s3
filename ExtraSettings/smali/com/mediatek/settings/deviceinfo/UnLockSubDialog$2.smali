.class Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$2;
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
    .line 59
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$2;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog$2;->this$0:Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;

    # invokes: Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->finishActivity()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->access$200(Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;)V

    .line 64
    return-void
.end method
