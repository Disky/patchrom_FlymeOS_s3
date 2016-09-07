.class Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1390
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/extrasettings/applications/InstalledAppDetails;

    move-result-object v0

    # getter for: Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$900(Lcom/android/extrasettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1392
    const-string v0, "InstalledAppDetails"

    const-string v1, "cannot clear data "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/extrasettings/applications/InstalledAppDetails;

    move-result-object v0

    # invokes: Lcom/android/extrasettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$800(Lcom/android/extrasettings/applications/InstalledAppDetails;ZZ)V

    .line 1394
    return-void
.end method
