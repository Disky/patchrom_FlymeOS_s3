.class Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/TetherSettings;Lcom/android/extrasettings/TetherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/TetherSettings$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/extrasettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "action":Ljava/lang/String;
    const-string v6, "TetherSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 268
    const-string v6, "availableArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 270
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "activeArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 272
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "erroredArray"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 276
    .local v5, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "UnTetherDone"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$102(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 277
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "TetherDone"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$202(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 278
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "TetherFail"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$302(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 281
    const-string v6, "TetherSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUsbUnTetherDone? :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$100(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , mUsbTetherDonel? :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$200(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , tether fail? :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$300(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v9, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    # invokes: Lcom/android/extrasettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v9, v6, v7, v8}, Lcom/android/extrasettings/TetherSettings;->access$400(Lcom/android/extrasettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # invokes: Lcom/android/extrasettings/TetherSettings;->onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v6, v0, p2}, Lcom/android/extrasettings/TetherSettings;->access$1300(Lcom/android/extrasettings/TetherSettings;Ljava/lang/String;Landroid/content/Intent;)V

    .line 335
    return-void

    .line 286
    :cond_1
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # setter for: Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v6, v10}, Lcom/android/extrasettings/TetherSettings;->access$502(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 288
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # invokes: Lcom/android/extrasettings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$600(Lcom/android/extrasettings/TetherSettings;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 290
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # setter for: Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v6, v9}, Lcom/android/extrasettings/TetherSettings;->access$502(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 291
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # invokes: Lcom/android/extrasettings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$600(Lcom/android/extrasettings/TetherSettings;)V

    goto :goto_0

    .line 292
    :cond_3
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 293
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "connected"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$702(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 295
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "configured"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$802(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 296
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$902(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 297
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    const-string v7, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/extrasettings/TetherSettings;->mIsPcKnowMe:Z
    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->access$1002(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 299
    const-string v6, "TetherSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$700(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mUsbConfigured:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$800(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mUsbHwDisconnected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->access$900(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # invokes: Lcom/android/extrasettings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$600(Lcom/android/extrasettings/TetherSettings;)V

    goto/16 :goto_0

    .line 303
    :cond_4
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$1100(Lcom/android/extrasettings/TetherSettings;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 331
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # invokes: Lcom/android/extrasettings/TetherSettings;->updateState()V
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$600(Lcom/android/extrasettings/TetherSettings;)V

    goto/16 :goto_0

    .line 308
    :sswitch_0
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$000(Lcom/android/extrasettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 309
    .local v4, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_6

    .line 310
    invoke-virtual {v4, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 311
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # setter for: Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6, v9}, Lcom/android/extrasettings/TetherSettings;->access$1102(Lcom/android/extrasettings/TetherSettings;Z)Z

    .line 314
    :cond_6
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # getter for: Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;
    invoke-static {v6}, Lcom/android/extrasettings/TetherSettings;->access$1200(Lcom/android/extrasettings/TetherSettings;)Lcom/mediatek/settings/TetherSettingsExt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v3

    .line 315
    .local v3, "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-eqz v3, :cond_5

    .line 316
    invoke-virtual {v3, v10}, Lcom/mediatek/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 317
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # setter for: Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6, v9}, Lcom/android/extrasettings/TetherSettings;->access$1102(Lcom/android/extrasettings/TetherSettings;Z)Z

    goto :goto_1

    .line 324
    .end local v3    # "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    .end local v4    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/extrasettings/TetherSettings;

    # setter for: Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v6, v9}, Lcom/android/extrasettings/TetherSettings;->access$1102(Lcom/android/extrasettings/TetherSettings;Z)Z

    goto :goto_1

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
