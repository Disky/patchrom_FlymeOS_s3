.class Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2455
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/DataUsageSummary;

    .line 2456
    .local v0, "target":Lcom/android/extrasettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2457
    const/4 v1, 0x1

    # invokes: Lcom/android/extrasettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/DataUsageSummary;->access$1900(Lcom/android/extrasettings/DataUsageSummary;Z)V

    .line 2459
    :cond_0
    return-void
.end method
