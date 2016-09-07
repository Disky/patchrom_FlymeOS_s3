.class final Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

.field private mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

.field private mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

.field private mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

.field private mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

.field private mPbapProfile:Lcom/android/extrasettings/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/extrasettings/bluetooth/BluetoothEventManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "eventManager"    # Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 211
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 107
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    .line 110
    iput-object p3, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    .line 111
    iput-object p4, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    .line 113
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5, p0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 114
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5, p0}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 116
    invoke-virtual {p2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 119
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v4, :cond_1

    .line 120
    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "bluetooth adapter uuid: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 122
    .local v3, "uuid":Landroid/os/ParcelUuid;
    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 158
    .end local v0    # "arr$":[Landroid/os/ParcelUuid;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "LocalBluetoothProfileManager construction complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/extrasettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 224
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/extrasettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 217
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 329
    .local v1, "l":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 331
    .end local v1    # "l":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 336
    .local v1, "listener":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 338
    .end local v1    # "listener":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/extrasettings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/extrasettings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getMapProfile()Lcom/android/extrasettings/bluetooth/MapProfile;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    return-object v0
.end method

.method getPbapProfile()Lcom/android/extrasettings/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    .line 345
    .local v0, "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 352
    :goto_0
    monitor-exit p0

    return v1

    .line 348
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    .end local v0    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 5

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Lcom/android/extrasettings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/extrasettings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    .line 236
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    if-nez v1, :cond_1

    .line 240
    new-instance v1, Lcom/android/extrasettings/bluetooth/PanProfile;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/extrasettings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    .line 241
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    if-nez v1, :cond_2

    .line 246
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v1, Lcom/android/extrasettings/bluetooth/MapProfile;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/extrasettings/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    .line 249
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    const-string v2, "MAP"

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    if-nez v1, :cond_3

    .line 254
    new-instance v1, Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/extrasettings/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    if-nez v1, :cond_4

    .line 257
    new-instance v1, Lcom/android/extrasettings/bluetooth/FtpProfile;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/extrasettings/bluetooth/FtpProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    .line 258
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    const-string v2, "FTP"

    const-string v3, "android.bluetooth.ftp.action.STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 264
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_5

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 267
    :cond_5
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 268
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 170
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/android/extrasettings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/extrasettings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    .line 174
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 185
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/extrasettings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    .line 188
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 198
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Lcom/android/extrasettings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/extrasettings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    .line 201
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 209
    return-void

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 192
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 204
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .param p5, "isPanNapConnected"    # Z
    .param p6, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 385
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 386
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 387
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 388
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "update profiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-nez p1, :cond_1

    .line 390
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "remote device uuid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 394
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 395
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    :cond_3
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add HeadsetProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 405
    :cond_4
    sget-object v0, Lcom/android/extrasettings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 407
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add A2dpProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/extrasettings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 412
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 414
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add OppProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/extrasettings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 419
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    if-eqz v0, :cond_8

    .line 422
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add HidProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/extrasettings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 427
    :cond_8
    if-eqz p5, :cond_9

    .line 428
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    if-nez v0, :cond_b

    :cond_a
    if-eqz p5, :cond_c

    .line 431
    :cond_b
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add PanProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/extrasettings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_c
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/extrasettings/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 438
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add MapProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/extrasettings/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/extrasettings/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 445
    :cond_d
    sget-object v0, Lcom/android/extrasettings/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add FtpProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/extrasettings/bluetooth/FtpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
