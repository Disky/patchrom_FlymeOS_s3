.class Lcom/android/extrasettings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/extrasettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/extrasettings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v1}, Lcom/android/extrasettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/extrasettings/wifi/AdvancedWifiSettings;)V

    .line 91
    :cond_1
    return-void
.end method
