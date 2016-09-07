.class Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p2, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 304
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->mProfile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/extrasettings/bluetooth/PanProfile;

    .line 309
    .local v0, "panProfile":Lcom/android/extrasettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 310
    .local v1, "role":I
    invoke-virtual {v0, p3, v1}, Lcom/android/extrasettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 311
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pan profile state change, role is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 313
    return-void
.end method
