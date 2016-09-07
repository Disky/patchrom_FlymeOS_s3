.class public final Lcom/android/extrasettings/bluetooth/BluetoothSettings;
.super Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mProfileDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 585
    new-instance v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$3;-><init>()V

    sput-object v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 143
    return-void
.end method

.method static synthetic access$002(Lcom/android/extrasettings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 77
    sput-object p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/extrasettings/bluetooth/BluetoothSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mProfileDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 326
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    invoke-virtual {p0, p3}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 330
    if-eqz p4, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 333
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 334
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 304
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 313
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 314
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 315
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 338
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 340
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 421
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 422
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 425
    :cond_1
    :goto_1
    return-void

    .line 342
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 343
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 344
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 346
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    const v0, 0x7f0901c4

    .line 348
    goto :goto_0

    .line 352
    :cond_2
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_7

    .line 353
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 357
    :goto_2
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f09030d

    sget-object v6, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6, v8}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 360
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 362
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    if-gtz v2, :cond_4

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    :cond_4
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_8

    .line 368
    new-instance v4, Lcom/android/extrasettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/extrasettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 369
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 373
    :goto_3
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f09030e

    sget-object v6, Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v7, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/extrasettings/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 376
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 378
    .local v1, "numberOfAvailableDevices":I
    iget-boolean v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_5

    .line 379
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 382
    :cond_5
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 383
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 386
    :cond_6
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901c5

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 389
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 395
    iget-boolean v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 398
    iput-boolean v9, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto/16 :goto_1

    .line 355
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_7
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_2

    .line 371
    .restart local v2    # "numberOfPairedDevices":I
    :cond_8
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 403
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0901e6

    .line 404
    goto/16 :goto_0

    .line 407
    :pswitch_2
    const v0, 0x7f090318

    .line 408
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    const v0, 0x7f0901c4

    goto/16 :goto_0

    .line 414
    :pswitch_3
    const v0, 0x7f0901e5

    .line 415
    iput-boolean v9, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 173
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 582
    const v0, 0x7f090ad5

    return v0
.end method

.method initDevicePreference(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 574
    .local v0, "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 155
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 157
    new-instance v1, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    .line 158
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 159
    return-void

    .line 148
    .end local v0    # "activity":Lcom/android/extrasettings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 432
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 439
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 240
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    move v0, v3

    .line 241
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 242
    .local v1, "isDiscovering":Z
    const-string v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateOptionsMenu, isDiscovering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v1, :cond_4

    const v2, 0x7f090302

    .line 245
    .local v2, "textId":I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 248
    const/4 v3, 0x2

    const v5, 0x7f0901c0

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    const/4 v3, 0x3

    const v5, 0x7f0901da

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    invoke-static {}, Lcom/mediatek/bluetooth/ConfigHelper;->isAdvanceSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    const/4 v3, 0x5

    const v5, 0x7f090127

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 259
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_3
    move v0, v4

    .line 240
    goto :goto_1

    .line 243
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_4
    const v2, 0x7f090301

    goto :goto_2

    .restart local v2    # "textId":I
    :cond_5
    move v3, v4

    .line 245
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mProfileDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mProfileDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mProfileDialog:Landroid/app/AlertDialog;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 232
    :cond_2
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 165
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 166
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 454
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 455
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 321
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V

    .line 322
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 294
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 266
    :pswitch_1
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 272
    :pswitch_2
    new-instance v4, Lcom/android/extrasettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v4}, Lcom/android/extrasettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "rename device"

    invoke-virtual {v4, v5, v6}, Lcom/android/extrasettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.settings.action.START_BT_ADV_SETTING"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v3, 0x0

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->pause()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 189
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0901c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->updateContent(I)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 443
    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged() started : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-super {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 449
    :cond_0
    return-void
.end method
