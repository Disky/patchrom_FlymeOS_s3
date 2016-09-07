.class Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/AdvancedWifiSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/AdvancedWifiSettingsExt;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;->this$0:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;->this$0:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    # getter for: Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->access$000(Lcom/mediatek/wifi/AdvancedWifiSettingsExt;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 66
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v1    # "state":I
    :cond_1
    if-ne v1, v4, :cond_0

    .line 63
    iget-object v2, p0, Lcom/mediatek/wifi/AdvancedWifiSettingsExt$1;->this$0:Lcom/mediatek/wifi/AdvancedWifiSettingsExt;

    # getter for: Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->mNotifyOpenNetworks:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/mediatek/wifi/AdvancedWifiSettingsExt;->access$000(Lcom/mediatek/wifi/AdvancedWifiSettingsExt;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
