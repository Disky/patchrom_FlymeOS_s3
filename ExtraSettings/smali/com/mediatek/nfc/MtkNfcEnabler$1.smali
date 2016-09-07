.class Lcom/mediatek/nfc/MtkNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/MtkNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/MtkNfcEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/MtkNfcEnabler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I
    invoke-static {v1, v2}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$002(Lcom/mediatek/nfc/MtkNfcEnabler;I)I

    .line 59
    const-string v1, "MtkNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive nfc state changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I
    invoke-static {v3}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$000(Lcom/mediatek/nfc/MtkNfcEnabler;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$100(Lcom/mediatek/nfc/MtkNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    new-instance v2, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    iget-object v3, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;-><init>(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$1;)V

    # setter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
    invoke-static {v1, v2}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$202(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    .line 62
    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
    invoke-static {v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$200(Lcom/mediatek/nfc/MtkNfcEnabler;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_0
    return-void
.end method
