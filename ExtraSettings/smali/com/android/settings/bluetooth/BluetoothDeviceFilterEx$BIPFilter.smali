.class final Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$BIPFilter;
.super Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;
.source "BluetoothDeviceFilterEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BIPFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$ClassUuidFilter;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx$BIPFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 3
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string v1, "BluetoothDeviceFilterEx"

    const-string v2, "Enter BIPFilter to matches"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz p1, :cond_1

    .line 72
    sget-object v1, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilterEx;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method