.class Lcom/mediatek/settings/wfd/WfdSettingsExt$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WfdSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    const-string v1, "wifiP2pDevice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/mediatek/settings/wfd/WfdSettingsExt;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->access$002(Lcom/mediatek/settings/wfd/WfdSettingsExt;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 143
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSettingsExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    # invokes: Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateDeviceName()V
    invoke-static {v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->access$100(Lcom/mediatek/settings/wfd/WfdSettingsExt;)V

    .line 145
    :cond_0
    return-void
.end method
