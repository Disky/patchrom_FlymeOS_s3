.class public final Lcom/android/extrasettings/bluetooth/DevicePickerFragment;
.super Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressCategory:Lcom/android/extrasettings/ProgressCategory;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 66
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 68
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 69
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 70
    return-void
.end method

.method initDevicePreference(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 74
    const v0, 0x7f040093

    invoke-virtual {p1, v0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 75
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 158
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0901db

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 100
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 104
    const-string v1, "bt_device_list"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/ProgressCategory;

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/extrasettings/ProgressCategory;

    .line 105
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    const v0, 0x7f090301

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/extrasettings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/extrasettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/extrasettings/ProgressCategory;->removeAll()V

    .line 114
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 145
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 147
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->finish()V

    .line 152
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 132
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->finish()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/extrasettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/ProgressCategory;->setNoDeviceFoundAdded(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->removeAllDevices()V

    .line 122
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 123
    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 125
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 127
    :cond_0
    return-void
.end method
