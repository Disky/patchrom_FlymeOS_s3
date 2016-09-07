.class Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
.super Landroid/os/AsyncTask;
.source "MtkNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/MtkNfcEnabler;
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
.field final synthetic this$0:Lcom/mediatek/nfc/MtkNfcEnabler;


# direct methods
.method private constructor <init>(Lcom/mediatek/nfc/MtkNfcEnabler;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;
    .param p2, "x1"    # Lcom/mediatek/nfc/MtkNfcEnabler$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;-><init>(Lcom/mediatek/nfc/MtkNfcEnabler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$100(Lcom/mediatek/nfc/MtkNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    # setter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I
    invoke-static {v0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$002(Lcom/mediatek/nfc/MtkNfcEnabler;I)I

    .line 215
    const-string v0, "MtkNfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QueryTask] doInBackground  mNfcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I
    invoke-static {v2}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$000(Lcom/mediatek/nfc/MtkNfcEnabler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    # getter for: Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I
    invoke-static {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$000(Lcom/mediatek/nfc/MtkNfcEnabler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 221
    const-string v0, "MtkNfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QueryTask] onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/mediatek/nfc/MtkNfcEnabler;->handleNfcStateChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$400(Lcom/mediatek/nfc/MtkNfcEnabler;I)V

    .line 223
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
