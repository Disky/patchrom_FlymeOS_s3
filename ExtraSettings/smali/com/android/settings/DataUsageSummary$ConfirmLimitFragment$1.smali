.class Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    .prologue
    .line 2104
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2108
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2109
    iget-wide v2, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->access$1700(Lcom/android/extrasettings/DataUsageSummary;J)V

    .line 2111
    :cond_0
    return-void
.end method
