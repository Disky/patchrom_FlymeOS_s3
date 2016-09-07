.class public abstract Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/extrasettings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/extrasettings/bluetooth/BluetoothCallback;


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 70
    sget-object v0, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 71
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/extrasettings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/extrasettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 218
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 136
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 137
    .local v0, "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 139
    .end local v0    # "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 182
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    .line 190
    .local v0, "preference":Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V

    .line 191
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 201
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 7
    .param p1, "bluetoothState"    # I

    .prologue
    .line 225
    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    .line 226
    const-string v4, "DeviceListPreferenceFragment"

    const-string v5, "BT state become to TURNING_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    .local v0, "disableEndTime":J
    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth disable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v0    # "disableEndTime":J
    :cond_2
    const/16 v4, 0xc

    if-ne p1, v4, :cond_0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    .local v2, "enableEndTime":J
    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth enable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    .line 86
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    .line 92
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 94
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 165
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded, Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already have preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create new preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .line 205
    .local v0, "preference":Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 124
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/extrasettings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 144
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 157
    :goto_0
    return v2

    .line 149
    :cond_0
    instance-of v3, p2, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 150
    check-cast v0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .line 151
    .local v0, "btPreference":Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 152
    .local v1, "device":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 157
    .end local v0    # "btPreference":Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/extrasettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/extrasettings/bluetooth/BluetoothCallback;)V

    .line 112
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 211
    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 213
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 130
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 131
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 99
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 78
    invoke-static {p1}, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 79
    return-void
.end method

.method final setFilter(Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 75
    return-void
.end method
