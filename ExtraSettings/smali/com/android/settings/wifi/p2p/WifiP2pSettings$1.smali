.class Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "action":Ljava/lang/String;
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    const-string v7, "wifi_p2p_state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1

    :goto_0
    # setter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z
    invoke-static {v6, v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$002(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 125
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)V

    .line 163
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    const-string v4, "wifiP2pDeviceList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    # setter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v5, v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$202(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 129
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 130
    :cond_3
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v5}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 132
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 134
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const-string v5, "wifiP2pInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 136
    .local v3, "wifip2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    const-string v4, "WifiP2pSettings"

    const-string v5, "Connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    iget-boolean v5, v3, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    # setter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z
    invoke-static {v4, v5}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Z)Z

    goto :goto_1

    .line 138
    :cond_5
    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z
    invoke-static {v5}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Z

    move-result v5

    if-eq v5, v4, :cond_4

    .line 141
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_2

    .line 144
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wifip2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_6
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 145
    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    const-string v4, "wifiP2pDevice"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5, v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$702(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 147
    const-string v4, "WifiP2pSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update device info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v6}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1

    .line 149
    :cond_7
    const-string v6, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 150
    const-string v6, "discoveryState"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "discoveryState":I
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discovery state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-ne v1, v9, :cond_8

    .line 154
    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v5, v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 156
    :cond_8
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v4, v5}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 158
    .end local v1    # "discoveryState":I
    :cond_9
    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v4}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/extrasettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_1
.end method
