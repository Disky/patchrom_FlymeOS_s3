.class final Lcom/android/extrasettings/bluetooth/FtpProfile;
.super Ljava/lang/Object;
.source "FtpProfile.java"

# interfaces
.implements Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

.field private static mService:Lcom/mediatek/bluetooth/BluetoothProfileManager;

.field private static profile:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Lcom/mediatek/bluetooth/BluetoothUuidEx;->ObexFileTransfer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    .line 53
    sget-object v0, Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;->FTP_CLIENT:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    sput-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->profile:Lcom/mediatek/bluetooth/BluetoothProfileManager$Profile;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "FtpProfile"

    const-string v1, "Constructor of FtpProfile in Settings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    invoke-direct {v0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 71
    sget-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 75
    sget-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 79
    sget-object v1, Lcom/android/extrasettings/bluetooth/FtpProfile;->mFtpClient:Lcom/mediatek/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Client;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 80
    .local v0, "state":I
    if-ltz v0, :cond_0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x5

    .line 84
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return v0

    .line 86
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 88
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 133
    const v0, 0x7f020054

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 120
    const v0, 0x7f090128

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 101
    const/4 v0, -0x1

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 63
    const-string v0, "profile_supported_ftp"

    invoke-static {v0}, Lcom/mediatek/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/bluetooth/FtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 97
    .local v0, "state":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->mService:Lcom/mediatek/bluetooth/BluetoothProfileManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "FTP"

    return-object v0
.end method
