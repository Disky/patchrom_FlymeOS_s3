.class Lcom/android/extrasettings/MasterClearConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/MasterClearConfirm$1;

.field final synthetic val$oldOrientation:I

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->this$1:Lcom/android/extrasettings/MasterClearConfirm$1;

    iput-object p2, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object p3, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    iput p4, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$oldOrientation:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/MasterClearConfirm$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/MasterClearConfirm$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 93
    iget-object v0, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->this$1:Lcom/android/extrasettings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/extrasettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->val$oldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 94
    iget-object v0, p0, Lcom/android/extrasettings/MasterClearConfirm$1$1;->this$1:Lcom/android/extrasettings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/extrasettings/MasterClearConfirm$1;->this$0:Lcom/android/extrasettings/MasterClearConfirm;

    # invokes: Lcom/android/extrasettings/MasterClearConfirm;->doMasterClear()V
    invoke-static {v0}, Lcom/android/extrasettings/MasterClearConfirm;->access$000(Lcom/android/extrasettings/MasterClearConfirm;)V

    .line 95
    return-void
.end method
