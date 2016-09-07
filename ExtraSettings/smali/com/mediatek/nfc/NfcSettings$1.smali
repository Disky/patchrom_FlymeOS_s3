.class Lcom/mediatek/nfc/NfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive nfc change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    new-instance v2, Lcom/mediatek/nfc/NfcSettings$QueryTask;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V

    # setter for: Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;
    invoke-static {v1, v2}, Lcom/mediatek/nfc/NfcSettings;->access$102(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$QueryTask;)Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 103
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$100(Lcom/mediatek/nfc/NfcSettings;)Lcom/mediatek/nfc/NfcSettings$QueryTask;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 107
    const-string v1, "NfcSettings"

    const-string v2, "Receive broadcast: RF field on detected"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {v1}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 110
    const-string v1, "NfcSettings"

    const-string v2, "Receive broadcast: RF field off detected"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
