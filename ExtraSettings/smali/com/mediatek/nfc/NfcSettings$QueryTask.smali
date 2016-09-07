.class Lcom/mediatek/nfc/NfcSettings$QueryTask;
.super Landroid/os/AsyncTask;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/NfcSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/nfc/NfcSettings;
    .param p2, "x1"    # Lcom/mediatek/nfc/NfcSettings$1;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    # setter for: Lcom/mediatek/nfc/NfcSettings;->mNfcState:I
    invoke-static {v0, v1}, Lcom/mediatek/nfc/NfcSettings;->access$702(Lcom/mediatek/nfc/NfcSettings;I)I

    .line 369
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    # setter for: Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z
    invoke-static {v0, v1}, Lcom/mediatek/nfc/NfcSettings;->access$802(Lcom/mediatek/nfc/NfcSettings;Z)Z

    .line 371
    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground  mNfcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcState:I
    invoke-static {v2}, Lcom/mediatek/nfc/NfcSettings;->access$700(Lcom/mediatek/nfc/NfcSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground  mNfcBeamOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z
    invoke-static {v2}, Lcom/mediatek/nfc/NfcSettings;->access$800(Lcom/mediatek/nfc/NfcSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcState:I
    invoke-static {v0}, Lcom/mediatek/nfc/NfcSettings;->access$700(Lcom/mediatek/nfc/NfcSettings;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 378
    const-string v0, "NfcSettings"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus(I)V
    invoke-static {v0, v1}, Lcom/mediatek/nfc/NfcSettings;->access$900(Lcom/mediatek/nfc/NfcSettings;I)V

    .line 380
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 364
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
