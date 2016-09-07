.class Lcom/android/extrasettings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    const-string v2, "accessory"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v1, v2}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$002(Lcom/android/extrasettings/deviceinfo/UsbSettings;Z)Z

    .line 61
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbAccessoryMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v3}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$000(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$100(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->dealWithBroadcastEvent(Landroid/content/Intent;)V

    .line 64
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$100(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isNeedExit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->finish()V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$100(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isNeedUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/extrasettings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/extrasettings/deviceinfo/UsbSettings;->mUsbExts:Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
    invoke-static {v2}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$100(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getCurrentFunction()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/extrasettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->access$200(Lcom/android/extrasettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
