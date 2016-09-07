.class Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2332
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2334
    sget v1, Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;->mSubId:I

    const/4 v2, 0x0

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary;->access$1100(Lcom/android/extrasettings/DataUsageSummary;IZ)V

    .line 2336
    :cond_0
    return-void
.end method
