.class Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
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
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;Lcom/android/extrasettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/android/extrasettings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 201
    const-string v4, "android.bluetooth.device.extra.RSSI"

    const/16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 202
    .local v3, "rssi":S
    const-string v4, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 203
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "name":Ljava/lang/String;
    const-string v5, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ,Class: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 208
    .local v1, "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_0

    .line 209
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v4}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v5}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v6}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 210
    const-string v4, "BluetoothEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    # invokes: Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v4, v1}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/extrasettings/bluetooth/BluetoothEventManager;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    .line 219
    invoke-virtual {v1, v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 220
    invoke-virtual {v1, v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setNewName(Ljava/lang/String;)V

    .line 222
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 223
    return-void

    .line 204
    .end local v1    # "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
