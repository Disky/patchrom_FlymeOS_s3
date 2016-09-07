.class Lcom/android/extrasettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0904ff

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090500

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 74
    .local v1, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/extrasettings/MasterClearConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v2

    .line 77
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 81
    iget-object v3, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 82
    .local v0, "oldOrientation":I
    iget-object v3, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v3}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 83
    new-instance v3, Lcom/android/extrasettings/MasterClearConfirm$1$1;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/extrasettings/MasterClearConfirm$1$1;-><init>(Lcom/android/extrasettings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/ProgressDialog;I)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/MasterClearConfirm$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 98
    .end local v0    # "oldOrientation":I
    .end local v2    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    # invokes: Lcom/android/extrasettings/MasterClearConfirm;->doMasterClear()V
    invoke-static {v3}, Lcom/android/extrasettings/MasterClearConfirm;->access$000(Lcom/android/extrasettings/MasterClearConfirm;)V

    goto :goto_0
.end method
