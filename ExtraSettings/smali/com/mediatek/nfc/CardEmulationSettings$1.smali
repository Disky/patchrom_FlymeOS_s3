.class Lcom/mediatek/nfc/CardEmulationSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CardEmulationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/CardEmulationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/CardEmulationSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-virtual {v1}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 86
    const-string v1, "CardEmulationSettings"

    const-string v2, "Receive broadcast: RF field on detected"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings$1;->this$0:Lcom/mediatek/nfc/CardEmulationSettings;

    invoke-virtual {v1}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 89
    const-string v1, "CardEmulationSettings"

    const-string v2, "Receive broadcast: RF field off detected"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
