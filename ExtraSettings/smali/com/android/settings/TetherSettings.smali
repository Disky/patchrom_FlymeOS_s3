.class public Lcom/android/extrasettings/TetherSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/extrasettings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/Preference;

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    .line 120
    iput-boolean v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mIsPcKnowMe:Z

    .line 238
    new-instance v0, Lcom/android/extrasettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/TetherSettings$1;-><init>(Lcom/android/extrasettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/TetherSettings;)Lcom/mediatek/settings/TetherSettingsExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/TetherSettings;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/TetherSettings;->onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/extrasettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/extrasettings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/extrasettings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/extrasettings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 774
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 775
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 780
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 774
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 773
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 780
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f09040a

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 220
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 221
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 223
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 225
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 226
    const v3, 0x10404c1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/extrasettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 232
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/extrasettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 599
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provisionApp length should at least be 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 602
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "intent":Landroid/content/Intent;
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 611
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "provisionApp":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/extrasettings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/extrasettings/TetherSettings;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 856
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 858
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 860
    .local v0, "state":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    .line 870
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 864
    :cond_2
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 866
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->updateState()V

    goto :goto_0

    .line 867
    :cond_4
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    const-string v1, "action.wifi.tethered_switch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 687
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 690
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 692
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f090516

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 818
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 820
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 821
    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    .line 820
    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    .line 821
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 619
    iput p1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    .line 620
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/extrasettings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v0, v4}, Lcom/android/extrasettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 628
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 653
    iget v3, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    packed-switch v3, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 655
    :pswitch_0
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    invoke-virtual {v3, v5}, Lcom/android/extrasettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 659
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 660
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 661
    iput-boolean v5, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 662
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 663
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v4, 0x7f0901e5

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 664
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 666
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 667
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 671
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v3, v5}, Lcom/mediatek/settings/TetherSettingsExt;->updateBtDunTether(Z)V

    .line 672
    const v3, 0x7f090518

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "summary":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "summary":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/extrasettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 22
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/TetherSettingsExt;->getBTErrorCode([Ljava/lang/String;)V

    .line 526
    const/4 v7, 0x0

    .line 527
    .local v7, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v16, v4, v12

    .line 528
    .local v16, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v14, :cond_1

    aget-object v15, v5, v11

    .line 529
    .local v15, "regex":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v7, 0x1

    .line 528
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 527
    .end local v15    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_0

    .line 533
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v16    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 534
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 582
    :goto_2
    return-void

    .line 536
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    .line 537
    .local v10, "btState":I
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "btState = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0901e6

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 541
    :cond_4
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0901e5

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 545
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothPan;

    .line 547
    .local v8, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v6

    .line 548
    .local v6, "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v18

    if-nez v18, :cond_7

    :cond_6
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 551
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 553
    const/4 v9, 0x0

    .line 554
    .local v9, "bluetoothTethered":I
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 555
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    .line 556
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bluetooth Tethered PAN devices = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 559
    invoke-virtual {v6}, Lcom/mediatek/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    add-int v9, v9, v18

    .line 560
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bluetooth tethered total devices = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_a

    .line 564
    const v18, 0x7f09051a

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 566
    .local v17, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 567
    .end local v17    # "summary":Ljava/lang/String;
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_b

    .line 568
    const v18, 0x7f090519

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 569
    .restart local v17    # "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 570
    .end local v17    # "summary":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_c

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f09051d

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 573
    :cond_c
    const v18, 0x7f090518

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 574
    .restart local v17    # "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 577
    .end local v9    # "bluetoothTethered":I
    .end local v17    # "summary":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f09051c

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 401
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 404
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/extrasettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/TetherSettings;->updateStateExt([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    goto :goto_0
.end method

.method private updateStateExt([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 826
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPcKnowMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/TetherSettings;->mIsPcKnowMe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_2

    .line 836
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mIsPcKnowMe:Z

    if-nez v0, :cond_1

    .line 837
    :cond_0
    iput-boolean v4, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 852
    :cond_1
    :goto_0
    return v3

    .line 840
    :cond_2
    iput-boolean v3, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0

    .line 843
    :cond_3
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_5

    .line 844
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_1

    .line 845
    :cond_4
    iput-boolean v4, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0

    .line 848
    :cond_5
    iput-boolean v3, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 426
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 428
    .local v6, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/4 v14, 0x1

    .line 429
    .local v14, "usbAvailable":Z
    :goto_0
    const/4 v15, 0x0

    .line 430
    .local v15, "usbError":I
    move-object/from16 v4, p1

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v12, v4, v8

    .line 431
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v11, v5, v7

    .line 432
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 433
    if-nez v15, :cond_0

    .line 434
    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    .line 431
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 428
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "regex":Ljava/lang/String;
    .end local v12    # "s":Ljava/lang/String;
    .end local v14    # "usbAvailable":Z
    .end local v15    # "usbError":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 430
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "s":Ljava/lang/String;
    .restart local v14    # "usbAvailable":Z
    .restart local v15    # "usbError":I
    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 439
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    .line 440
    .local v17, "usbTethered":Z
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v9, :cond_6

    aget-object v12, v4, v8

    .line 441
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v10, :cond_5

    aget-object v11, v5, v7

    .line 442
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v17, 0x1

    .line 441
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 440
    .end local v11    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_3

    .line 445
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    .line 446
    .local v16, "usbErrored":Z
    move-object/from16 v4, p3

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_5
    if-ge v8, v9, :cond_9

    aget-object v12, v4, v8

    .line 447
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v10, :cond_8

    aget-object v11, v5, v7

    .line 448
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v16, 0x1

    .line 447
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 446
    .end local v11    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_5

    .line 453
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/settings/TetherSettingsExt;->getUSBErrorCode([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 456
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v17, :cond_a

    .line 460
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 464
    const v18, 0x7f090512

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 465
    .local v13, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2, v14}, Lcom/mediatek/settings/TetherSettingsExt;->updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V

    .line 466
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 468
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v13    # "summary":Ljava/lang/String;
    :goto_7
    return-void

    .line 471
    :cond_a
    if-eqz v14, :cond_d

    .line 472
    if-nez v15, :cond_c

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090511

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 477
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/mediatek/settings/TetherSettingsExt;->updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V

    .line 478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 479
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 484
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 487
    :cond_b
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTethering: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 475
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090516

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    .line 490
    :cond_d
    if-eqz v16, :cond_e

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090516

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 495
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 496
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090513

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 501
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 503
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbConfigured:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    .line 504
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090514

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 507
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 519
    :goto_9
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 510
    :cond_11
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const v19, 0x7f090511

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 515
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 808
    const v0, 0x7f090ade

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 631
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 632
    if-nez p1, :cond_0

    .line 633
    if-ne p2, v1, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/extrasettings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 635
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->startTethering()V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget v0, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 647
    :goto_1
    iput v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 641
    :pswitch_0
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 644
    :pswitch_1
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 784
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/extrasettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 786
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 794
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 798
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/extrasettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 799
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09040a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 139
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    .line 144
    :cond_0
    const v8, 0x7f06004b

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 146
    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 148
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    iput-boolean v9, p0, Lcom/android/extrasettings/TetherSettings;->mUnavailable:Z

    .line 150
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v13}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 209
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v8, Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/mediatek/settings/TetherSettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    .line 155
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/mediatek/settings/TetherSettingsExt;->onCreate(Landroid/preference/PreferenceScreen;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 158
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/extrasettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 163
    :cond_2
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    .line 165
    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 166
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 167
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 169
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 172
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 173
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 174
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 176
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v5, v9

    .line 177
    .local v5, "usbAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v7, v9

    .line 178
    .local v7, "wifiAvailable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    move v2, v9

    .line 180
    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_4
    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_8

    .line 185
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->initWifiTethering()V

    .line 192
    :goto_4
    iput-object v13, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    .line 194
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v11, p0, Lcom/android/extrasettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v8, v11, v6, v7}, Lcom/mediatek/settings/TetherSettingsExt;->updateWifiTether(Landroid/preference/Preference;Landroid/preference/Preference;Z)V

    .line 195
    if-nez v2, :cond_9

    .line 196
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :goto_5
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_5
    move v5, v10

    .line 176
    goto :goto_1

    .restart local v5    # "usbAvailable":Z
    :cond_6
    move v7, v10

    .line 177
    goto :goto_2

    .restart local v7    # "wifiAvailable":Z
    :cond_7
    move v2, v10

    .line 178
    goto :goto_3

    .line 187
    .restart local v2    # "bluetoothAvailable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/extrasettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 198
    :cond_9
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 199
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 200
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 204
    :goto_6
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v9, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBtTetherState(Landroid/preference/SwitchPreference;)V

    goto :goto_5

    .line 202
    :cond_a
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 250
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/extrasettings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/extrasettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiApDialog;

    .line 253
    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mDialog:Lcom/android/extrasettings/wifi/WifiApDialog;

    .line 256
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/settings/TetherSettingsExt;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 700
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 703
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v8, :cond_5

    .line 704
    iget-boolean v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    if-nez v8, :cond_1

    .line 705
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .line 708
    .local v5, "newState":Z
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 709
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v8, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateUsbTypeListState(Z)V

    .line 710
    iput-boolean v7, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    .line 711
    iput-boolean v9, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 712
    if-eqz v5, :cond_2

    .line 713
    iput-boolean v9, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherDone:Z

    .line 717
    :goto_0
    iput-boolean v9, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTetherFail:Z

    .line 719
    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") mUsbTethering:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTethering:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    if-eqz v5, :cond_3

    .line 724
    invoke-direct {p0, v7}, Lcom/android/extrasettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 768
    .end local v5    # "newState":Z
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v7, p2}, Lcom/mediatek/settings/TetherSettingsExt;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 769
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :cond_1
    return v7

    .line 715
    .restart local v5    # "newState":Z
    :cond_2
    iput-boolean v9, p0, Lcom/android/extrasettings/TetherSettings;->mUsbUnTetherDone:Z

    goto :goto_0

    .line 726
    :cond_3
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/extrasettings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 727
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/extrasettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 729
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/extrasettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    .line 734
    .end local v5    # "newState":Z
    :cond_5
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v8, :cond_b

    .line 735
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 737
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_6

    .line 738
    invoke-direct {p0, v10}, Lcom/android/extrasettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 764
    :goto_2
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/extrasettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v8, v9, v10}, Lcom/mediatek/settings/TetherSettingsExt;->updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V

    goto :goto_1

    .line 740
    :cond_6
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/extrasettings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 741
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/android/extrasettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 743
    :cond_7
    const/4 v4, 0x0

    .line 745
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/extrasettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    .line 749
    const/4 v4, 0x1

    .line 752
    :cond_8
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 753
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_9

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 756
    :cond_9
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v7, v9}, Lcom/mediatek/settings/TetherSettingsExt;->updateBtDunTether(Z)V

    .line 758
    if-eqz v4, :cond_a

    .line 759
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f09051d

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 761
    :cond_a
    iget-object v7, p0, Lcom/android/extrasettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f09051c

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 765
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/extrasettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v8, :cond_0

    .line 766
    invoke-virtual {p0, v7}, Lcom/android/extrasettings/TetherSettings;->showDialog(I)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 342
    iget-boolean v4, p0, Lcom/android/extrasettings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 345
    if-eqz v1, :cond_0

    .line 346
    const v4, 0x7f09066a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 383
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    invoke-virtual {v4}, Lcom/mediatek/settings/TetherSettingsExt;->isUMSEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z

    .line 354
    const-string v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMassStorageActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/extrasettings/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v4, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/extrasettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/extrasettings/TetherSettings;Lcom/android/extrasettings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 359
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherSettingsExt:Lcom/mediatek/settings/TetherSettingsExt;

    iget-object v5, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/settings/TetherSettingsExt;->onStart(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 375
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 376
    :cond_2
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 377
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    iget-object v4, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/extrasettings/wifi/WifiApEnabler;->resume()V

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/TetherSettings;->updateState()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStop()V

    .line 389
    iget-boolean v0, p0, Lcom/android/extrasettings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    iput-object v2, p0, Lcom/android/extrasettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mEnableWifiAp:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 396
    iget-object v0, p0, Lcom/android/extrasettings/TetherSettings;->mWifiApEnabler:Lcom/android/extrasettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiApEnabler;->pause()V

    goto :goto_0
.end method
