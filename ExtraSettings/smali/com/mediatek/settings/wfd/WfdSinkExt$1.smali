.class Lcom/mediatek/settings/wfd/WfdSinkExt$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdSinkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkExt;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WfdSinkExt"

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

    .line 82
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    iget-object v2, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkExt;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->access$000(Lcom/mediatek/settings/wfd/WfdSinkExt;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkExt;->handleWfdStatusChanged(Landroid/hardware/display/WifiDisplayStatus;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->access$100(Lcom/mediatek/settings/wfd/WfdSinkExt;Landroid/hardware/display/WifiDisplayStatus;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "com.mediatek.wfd.portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/settings/wfd/WfdSinkExt$1;->this$0:Lcom/mediatek/settings/wfd/WfdSinkExt;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/settings/wfd/WfdSinkExt;->mUiPortrait:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/wfd/WfdSinkExt;->access$202(Lcom/mediatek/settings/wfd/WfdSinkExt;Z)Z

    goto :goto_0
.end method
