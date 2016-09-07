.class Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/extrasettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .param p2, "started"    # Z

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean p2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 184
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/bluetooth/BluetoothCallback;

    .line 189
    .local v0, "callback":Lcom/android/extrasettings/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 191
    .end local v0    # "callback":Lcom/android/extrasettings/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    const-string v2, "BluetoothEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanning state change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 194
    invoke-static {p1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 195
    return-void
.end method
