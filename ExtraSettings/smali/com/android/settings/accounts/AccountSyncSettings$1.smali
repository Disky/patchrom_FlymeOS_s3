.class Lcom/android/extrasettings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/extrasettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/extrasettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/extrasettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;

    # getter for: Lcom/android/extrasettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/extrasettings/accounts/AccountSyncSettings;->access$000(Lcom/android/extrasettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.cyanogen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/extrasettings/SecuritySettings;->isDeviceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/extrasettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;

    const/4 v2, 0x0

    const/16 v3, 0x67

    invoke-static {v1, v2, v3}, Lcom/android/extrasettings/SecuritySettings;->updateCyanogenDeviceLockState(Landroid/app/Fragment;ZI)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/extrasettings/accounts/AccountSyncSettings;

    # invokes: Lcom/android/extrasettings/accounts/AccountSyncSettings;->removeAccount()V
    invoke-static {v1}, Lcom/android/extrasettings/accounts/AccountSyncSettings;->access$100(Lcom/android/extrasettings/accounts/AccountSyncSettings;)V

    goto :goto_0
.end method
