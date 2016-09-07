.class Lcom/android/extrasettings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    const-string v5, "connected"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 294
    .local v3, "isUsbConnected":Z
    iget-object v5, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    # getter for: Lcom/android/extrasettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/extrasettings/deviceinfo/Memory;->access$200(Lcom/android/extrasettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "usbFunction":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    # getter for: Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/extrasettings/deviceinfo/Memory;->access$100(Lcom/android/extrasettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 296
    .local v1, "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v3, v4}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v1    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 306
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isUsbConnected":Z
    .end local v4    # "usbFunction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 299
    :cond_2
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    # getter for: Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/extrasettings/deviceinfo/Memory;->access$100(Lcom/android/extrasettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 301
    .restart local v1    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_2

    .line 303
    .end local v1    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    iget-object v5, p0, Lcom/android/extrasettings/deviceinfo/Memory$2;->this$0:Lcom/android/extrasettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method
