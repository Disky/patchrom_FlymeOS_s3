.class Lcom/android/extrasettings/WirelessSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/extrasettings/WirelessSettings$1;->this$0:Lcom/android/extrasettings/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "WirelessSettings"

    const-string v2, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings$1;->this$0:Lcom/android/extrasettings/WirelessSettings;

    # invokes: Lcom/android/extrasettings/WirelessSettings;->updateMobileNetworkEnabled()V
    invoke-static {v1}, Lcom/android/extrasettings/WirelessSettings;->access$000(Lcom/android/extrasettings/WirelessSettings;)V

    .line 136
    iget-object v1, p0, Lcom/android/extrasettings/WirelessSettings$1;->this$0:Lcom/android/extrasettings/WirelessSettings;

    # getter for: Lcom/android/extrasettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/extrasettings/AirplaneModeEnabler;
    invoke-static {v1}, Lcom/android/extrasettings/WirelessSettings;->access$100(Lcom/android/extrasettings/WirelessSettings;)Lcom/android/extrasettings/AirplaneModeEnabler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/extrasettings/AirplaneModeEnabler;->updateSubscribers()V

    .line 138
    :cond_0
    return-void
.end method
