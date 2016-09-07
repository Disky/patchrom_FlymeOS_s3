.class Lcom/mediatek/nfc/NfcSettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/nfc/NfcSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    const-string v1, "NfcSettings"

    const-string v2, "mActiveCardModeObserver, onChange()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$300(Lcom/mediatek/nfc/NfcSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # invokes: Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$400(Lcom/mediatek/nfc/NfcSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "activeMode":Ljava/lang/String;
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferences, active mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EMULATION_OFF is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f090358

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 129
    .end local v0    # "activeMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "activeMode":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$2;->this$0:Lcom/mediatek/nfc/NfcSettings;

    # getter for: Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
