.class public Lcom/mediatek/settings/TetherSettingsExt;
.super Ljava/lang/Object;
.source "TetherSettingsExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/mediatek/bluetooth/BluetoothDun;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBtErrorIpv4:I

.field private mBtErrorIpv6:I

.field private mConnectService:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

.field mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPrfscreen:Landroid/preference/PreferenceScreen;

.field private mResources:Landroid/content/res/Resources;

.field private mTetherIpv6:Landroid/preference/ListPreference;

.field private mUsbErrorIpv4:I

.field private mUsbErrorIpv6:I

.field public mUsbTetherType:Landroid/preference/ListPreference;

.field public mWifiTether:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 106
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    .line 483
    new-instance v0, Lcom/mediatek/settings/TetherSettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/TetherSettingsExt$1;-><init>(Lcom/mediatek/settings/TetherSettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    .line 116
    const-string v0, "TetherSettingsExt"

    const-string v1, "TetherSettingsExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/mediatek/settings/TetherSettingsExt;->initServices()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/TetherSettingsExt;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/TetherSettingsExt;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/TetherSettingsExt;Lcom/mediatek/bluetooth/BluetoothDun;)Lcom/mediatek/bluetooth/BluetoothDun;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/TetherSettingsExt;
    .param p1, "x1"    # Lcom/mediatek/bluetooth/BluetoothDun;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    return-object p1
.end method

.method private createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 2
    .param p1, "type"    # I
    .param p2, "titleRes"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "screen"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "preference":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 258
    :goto_0
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 260
    invoke-virtual {p4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    return-object v0

    .line 240
    :pswitch_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 241
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 243
    :pswitch_1
    new-instance v0, Landroid/preference/Preference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 246
    :pswitch_2
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 247
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 250
    :pswitch_3
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 251
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 254
    :pswitch_4
    new-instance v0, Landroid/preference/Preference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 188
    const/4 v4, 0x4

    const v6, 0x7f090068

    const-string v7, "wifi_tether_settings"

    invoke-direct {p0, v4, v6, v7, p1}, Lcom/mediatek/settings/TetherSettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mWifiTether:Landroid/preference/Preference;

    .line 191
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mWifiTether:Landroid/preference/Preference;

    const/16 v6, -0x64

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 194
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERING_EEM_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 195
    const v4, 0x7f090116

    const-string v6, "usb_tethering_type"

    invoke-direct {p0, v8, v4, v6, p1}, Lcom/mediatek/settings/TetherSettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    .line 197
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    const v6, 0x7f0b005d

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 198
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    const v6, 0x7f0b005e

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 199
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 201
    const/16 v0, -0x63

    .line 202
    .local v0, "order":I
    const-string v4, "usb_tether_settings"

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 204
    .local v3, "usbTetherSettings":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 211
    .end local v0    # "order":I
    .end local v3    # "usbTetherSettings":Landroid/preference/Preference;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "usbRegexs":[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 216
    .local v1, "usbAvailable":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v4, :cond_3

    .line 218
    const-string v4, "TetherSettingsExt"

    const-string v6, "remove mUsbTetherType"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_3
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v4, :cond_4

    .line 225
    const v4, 0x7f090110

    const-string v6, "tethered_ipv6"

    invoke-direct {p0, v8, v4, v6, p1}, Lcom/mediatek/settings/TetherSettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    .line 227
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    const v6, 0x7f0b005b

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 228
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    const v6, 0x7f0b005c

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 229
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 230
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    :cond_4
    return-void

    .end local v1    # "usbAvailable":Z
    :cond_5
    move v1, v5

    .line 215
    goto :goto_0
.end method

.method private declared-synchronized initServices()V
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 291
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 292
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 293
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    .line 300
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    .line 304
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    .line 306
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothRegexs:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 295
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "TetherSettingsExt"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;
    .locals 4

    .prologue
    .line 495
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/BluetoothDun;

    .line 496
    .local v0, "Dun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-nez v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    .line 504
    .end local v0    # "Dun":Lcom/mediatek/bluetooth/BluetoothDun;
    :cond_0
    return-object v0

    .line 500
    .restart local v0    # "Dun":Lcom/mediatek/bluetooth/BluetoothDun;
    :cond_1
    new-instance v1, Lcom/mediatek/bluetooth/BluetoothDun;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    invoke-direct {v1, v2, v3}, Lcom/mediatek/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;)V

    iput-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    goto :goto_0
.end method

.method public getBTErrorCode([Ljava/lang/String;)V
    .locals 10
    .param p1, "available"    # [Ljava/lang/String;

    .prologue
    const/16 v9, 0x10

    .line 385
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v8, :cond_3

    .line 386
    const/4 v8, 0x0

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    .line 387
    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    .line 388
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 389
    .local v7, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 390
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_1

    .line 391
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    if-nez v8, :cond_0

    .line 392
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    .line 394
    :cond_0
    iget v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    if-ne v8, v9, :cond_1

    .line 395
    iget-object v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    and-int/lit16 v8, v8, 0xf0

    iput v8, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    .line 389
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v6    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 401
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getIPV6String(II)Ljava/lang/String;
    .locals 5
    .param p1, "errorIpv4"    # I
    .param p2, "errorIpv6"    # I

    .prologue
    const/16 v4, 0x20

    .line 406
    const-string v0, ""

    .line 407
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const-string v1, "TetherSettingsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[errorIpv4 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[errorIpv6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez p1, :cond_1

    if-ne p2, v4, :cond_1

    .line 412
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    if-nez p1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_2
    if-ne p2, v4, :cond_0

    .line 416
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "action.wifi.tethered_switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    return-object v0
.end method

.method public getUSBErrorCode([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "usbRegexs"    # [Ljava/lang/String;

    .prologue
    const/16 v10, 0x10

    .line 424
    const/4 v8, 0x0

    .line 425
    .local v8, "usbError":I
    sget-boolean v9, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v9, :cond_0

    .line 426
    const/4 v9, 0x0

    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 427
    iput v10, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 429
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v7, v0, v3

    .line 430
    .local v7, "s":Ljava/lang/String;
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v1, v2

    .line 431
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v9, :cond_2

    .line 432
    sget-boolean v9, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v9, :cond_3

    .line 433
    iget v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    if-nez v9, :cond_1

    .line 434
    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    .line 436
    :cond_1
    iget v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    if-ne v9, v10, :cond_2

    .line 437
    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0xf0

    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 430
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 440
    :cond_3
    if-nez v8, :cond_2

    .line 441
    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    .line 429
    .end local v6    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 448
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_5
    sget-boolean v9, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v9, :cond_8

    .line 449
    move-object v0, p2

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v4, :cond_8

    aget-object v7, v0, v3

    .line 450
    .restart local v7    # "s":Ljava/lang/String;
    move-object v1, p3

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v5, :cond_7

    aget-object v6, v1, v2

    .line 451
    .restart local v6    # "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 452
    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v9, :cond_6

    .line 453
    iget v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    if-ne v9, v10, :cond_6

    .line 454
    iget-object v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0xf0

    iput v9, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    .line 450
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 449
    .end local v6    # "regex":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_3

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    :cond_8
    move v2, v3

    .line 463
    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    return v8
.end method

.method public isUMSEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 311
    const-string v2, "TetherSettingsExt"

    const-string v3, " mMountService is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return v1

    .line 315
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TetherSettingsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util:RemoteException when isUsbMassStorageEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 122
    const-string v0, "TetherSettingsExt"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mPrfscreen:Landroid/preference/PreferenceScreen;

    .line 124
    invoke-direct {p0, p1}, Lcom/mediatek/settings/TetherSettingsExt;->initPreference(Landroid/preference/PreferenceScreen;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V

    .line 130
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothDun;

    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mDunServiceListener:Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BluetoothDun$ServiceListener;)V

    iput-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBluetoothDunProxy:Lcom/mediatek/bluetooth/BluetoothDun;

    .line 131
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "key":Ljava/lang/String;
    const-string v3, "TetherSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "usb_tethering_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "index":I
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "usb_tethering_type"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    const-string v3, "TetherSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange USB_TETHERING_TYPE value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return v4

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v3, "tethered_ipv6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, "ipv6Value":I
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 166
    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-ne v1, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->setTetheringIpv6Enable(Z)V

    .line 168
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 169
    iget-object v3, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mWifiTether:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 278
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mediatek.intent.action.WIFI_TETHER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    const v3, 0x7f0900ce

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_tethering_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "value":I
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method public updateBTPrfSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "originSummary"    # Ljava/lang/String;

    .prologue
    .line 348
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv4:I

    iget v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mBtErrorIpv6:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateBtDunTether(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v0

    .line 477
    .local v0, "bluetoothDun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method public updateBtTetherState(Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "btPrf"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/mediatek/settings/TetherSettingsExt;->BluetoothDunGetProxy()Lcom/mediatek/bluetooth/BluetoothDun;

    move-result-object v0

    .line 468
    .local v0, "dun":Lcom/mediatek/bluetooth/BluetoothDun;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 469
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateIpv6Preference(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Landroid/net/wifi/WifiManager;)V
    .locals 5
    .param p1, "usbTether"    # Landroid/preference/SwitchPreference;
    .param p2, "bluetoothTether"    # Landroid/preference/SwitchPreference;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 334
    iget-object v4, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 337
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mConnectService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringIpv6Enable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 339
    .local v0, "ipv6Value":I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 340
    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    .end local v0    # "ipv6Value":I
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 334
    goto :goto_0

    :cond_2
    move v0, v3

    .line 338
    goto :goto_1
.end method

.method public updateUSBPrfSummary(Landroid/preference/Preference;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "originSummary"    # Ljava/lang/String;
    .param p3, "usbTethered"    # Z
    .param p4, "usbAvailable"    # Z

    .prologue
    .line 356
    if-eqz p3, :cond_0

    .line 357
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    iget v2, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/TetherSettingsExt;->getIPV6String(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 366
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_TETHERINGIPV6_SUPPORT:Z

    if-eqz v0, :cond_2

    .line 367
    iget v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv4:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbErrorIpv6:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 369
    :cond_1
    const v0, 0x7f090511

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 375
    :cond_2
    :goto_1
    return-void

    .line 361
    :cond_3
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_4
    const v0, 0x7f090516

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public updateUsbTypeListState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "TetherSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set USB Tether Type state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 382
    :cond_0
    return-void
.end method

.method public updateWifiTether(Landroid/preference/Preference;Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "enableWifiAp"    # Landroid/preference/Preference;
    .param p2, "wifiApSettings"    # Landroid/preference/Preference;
    .param p3, "wifiAvailable"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mPrfscreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mPrfscreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/TetherSettingsExt;->mPrfscreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/TetherSettingsExt;->mWifiTether:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
