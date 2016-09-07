.class public Lcom/android/extrasettings/deviceinfo/Memory;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/extrasettings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 475
    new-instance v0, Lcom/android/extrasettings/deviceinfo/Memory$4;

    invoke-direct {v0}, Lcom/android/extrasettings/deviceinfo/Memory$4;-><init>()V

    sput-object v0, Lcom/android/extrasettings/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Lcom/android/extrasettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/deviceinfo/Memory$1;-><init>(Lcom/android/extrasettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 288
    new-instance v0, Lcom/android/extrasettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/deviceinfo/Memory$2;-><init>(Lcom/android/extrasettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/deviceinfo/Memory;)Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/Memory;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/Memory;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/Memory;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/Memory;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/Memory;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 134
    return-void
.end method

.method private doUnmount()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 338
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const v4, 0x7f0900d3

    const v5, 0x7f0904b5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getResourceId(II)I

    move-result v1

    .line 340
    .local v1, "informTextId":I
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 341
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 343
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v3, Lcom/android/extrasettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    sget-object v3, Lcom/android/extrasettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v4, 0x7f0904b6

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    sget-object v3, Lcom/android/extrasettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v4, 0x7f0904b7

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings unMountVolume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/extrasettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v3, Lcom/android/extrasettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/extrasettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 235
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 237
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 242
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 239
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 360
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 361
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/extrasettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 362
    .local v1, "stUsers":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 376
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 139
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 140
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 410
    .local v0, "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 412
    .end local v0    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/Memory;->removeDialog(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/Memory;->showDialog(I)V

    .line 357
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 382
    :try_start_0
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/extrasettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 102
    .local v1, "context":Landroid/content/Context;
    const-string v6, "usb"

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 104
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 105
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 107
    const v6, 0x7f060019

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 109
    new-instance v6, Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v6, v7, v8, v9}, Lcom/mediatek/settings/deviceinfo/MemoryExts;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V

    iput-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .line 111
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 113
    .local v4, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initMtkCategory()V

    .line 115
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v6}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->isAddInternalCategory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    invoke-static {v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/deviceinfo/Memory;->addCategory(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 119
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 120
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v6, v5}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    invoke-static {v1, v5}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/extrasettings/deviceinfo/Memory;->addCategory(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 119
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    iget-object v6, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    iget-object v7, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->registerSdSwapReceiver(Ljava/util/ArrayList;)V

    .line 127
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 128
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0905c0

    const/4 v0, 0x0

    .line 311
    packed-switch p1, :pswitch_data_0

    .line 333
    :goto_0
    return-object v0

    .line 313
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const v3, 0x7f0900cf

    const v4, 0x7f0904b1

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/extrasettings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/deviceinfo/Memory$3;-><init>(Lcom/android/extrasettings/deviceinfo/Memory;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09024b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const v2, 0x7f0900d0

    const v3, 0x7f0904b2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const v3, 0x7f0900d1

    const v4, 0x7f0904b3

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const v2, 0x7f0900d2

    const v3, 0x7f0904b4

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 203
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 204
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->unRegisterSdSwapReceiver()V

    .line 198
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0904bb

    const/4 v2, 0x0

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 220
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/extrasettings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 228
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const-class v0, Lcom/android/extrasettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/extrasettings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x7f100300
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 186
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 188
    .local v0, "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 190
    .end local v0    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 247
    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 248
    invoke-static {p0}, Lcom/android/extrasettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/extrasettings/deviceinfo/Memory;)V

    .line 285
    :cond_0
    :goto_0
    return v6

    .line 252
    :cond_1
    iget-object v8, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 253
    .local v1, "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 254
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 256
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/extrasettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found for intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0900ce

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 270
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 271
    sput-object p2, Lcom/android/extrasettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 272
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/extrasettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 273
    iget-object v7, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    sget-object v8, Lcom/android/extrasettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    .line 274
    iget-object v7, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    .line 279
    :cond_5
    iget-object v7, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mount(Landroid/os/storage/IMountService;)V

    goto/16 :goto_0

    .end local v1    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    move v6, v7

    .line 285
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 208
    const v3, 0x7f100300

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 209
    .local v1, "usb":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 210
    .local v0, "um":Landroid/os/UserManager;
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 212
    .local v2, "usbItemVisible":Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->setUsbEntranceState(Landroid/hardware/usb/UsbManager;Landroid/view/MenuItem;)V

    .line 214
    return-void

    .line 210
    .end local v2    # "usbItemVisible":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 146
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->isInUMSState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/deviceinfo/Memory;->removeDialog(I)V

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mMemoryExts:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateMtkCategory()V

    .line 161
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 162
    .local v0, "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 164
    .end local v0    # "category":Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    return-void
.end method
