.class public Lcom/mediatek/settings/deviceinfo/MemoryExts;
.super Ljava/lang/Object;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    }
.end annotation


# static fields
.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mApkInstallerEntrance:Landroid/preference/Preference;

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

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocationContainer:Landroid/preference/ListPreference;

.field private mInstallLocationEnabled:Z

.field private mIsAppInstallerInstalled:Z

.field private mIsCategoryAdded:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mWritePathAdded:[Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 61
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 109
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$1;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 219
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 425
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    .line 85
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 87
    iput-object p3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 88
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD SWAP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , SD SHARED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/deviceinfo/MemoryExts;)[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/deviceinfo/MemoryExts;Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;)Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Landroid/os/storage/IMountService;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/MemoryExts;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doMount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 377
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/deviceinfo/MemoryExts$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    return-void
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 6
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v1, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 321
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , emulated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v2, "not_present"

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/storage/StorageVolume;

    return-object v2
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "selectedLocation":I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initApkInstaller()V
    .locals 3

    .prologue
    .line 158
    const-string v1, "com.mediatek.apkinstaller"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 159
    iget-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    .line 161
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 163
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDefaultWriteDisk()V
    .locals 10

    .prologue
    .line 196
    new-instance v8, Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    .line 197
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const v9, 0x7f0900e1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 198
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 201
    .local v1, "availableVolumes":[Landroid/os/storage/StorageVolume;
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeListAsUser()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 204
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v7, "writePathList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;>;"
    move-object v0, v1

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 206
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    new-instance v5, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 207
    .local v5, "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 209
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v5, v4}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 211
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    iput-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 216
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Z

    iput-object v8, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    .line 217
    return-void
.end method

.method private initInstallLocation()V
    .locals 4

    .prologue
    const v3, 0x7f0905e2

    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 95
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0905e3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_1
    return-void
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 188
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateAPKInstaller()V
    .locals 10

    .prologue
    .line 174
    iget-boolean v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-nez v7, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x0

    .line 176
    .local v1, "flag":Z
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 177
    .local v4, "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "writePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "volumeState":Ljava/lang/String;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v1, :cond_1

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 176
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 182
    .end local v4    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultWriteDisk()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 236
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "externalStoragePath":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "externalStoragePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 240
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    aget-object v5, v9, v2

    .line 241
    .local v5, "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "writePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "volumeState":Ljava/lang/String;
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " volume state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 246
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-nez v9, :cond_0

    .line 247
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v13, v9, v2

    .line 250
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 251
    const/4 v9, -0x2

    invoke-virtual {v5, v9}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOrder(I)V

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    sget-object v9, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 253
    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOrder(I)V

    goto :goto_1

    .line 255
    :cond_2
    const/4 v9, -0x3

    invoke-virtual {v5, v9}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOrder(I)V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v9, v9, v2

    if-eqz v9, :cond_0

    .line 260
    invoke-virtual {v5, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 261
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v12, v9, v2

    goto :goto_1

    .line 268
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v6    # "volumeState":Ljava/lang/String;
    .end local v8    # "writePath":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    .line 269
    .local v7, "writeDiskNum":I
    iget-boolean v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-eqz v9, :cond_6

    if-nez v7, :cond_6

    .line 270
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    iput-boolean v12, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 277
    :cond_5
    :goto_2
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 278
    const-string v9, "MemorySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get default path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_8

    aget-object v5, v0, v3

    .line 280
    .restart local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 281
    invoke-virtual {v5, v13}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    .line 282
    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 279
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 272
    .end local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_6
    iget-boolean v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-nez v9, :cond_5

    if-lez v7, :cond_5

    .line 273
    iget-object v9, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    iput-boolean v13, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 284
    .restart local v0    # "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_7
    invoke-virtual {v5, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    goto :goto_4

    .line 287
    .end local v5    # "volumeItemPreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_8
    return-void
.end method

.method private updateInstallLocation()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 129
    iget-boolean v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-nez v11, :cond_0

    .line 155
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 132
    .local v7, "volumePreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v7}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "writePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "volumeState":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 135
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 136
    const-string v10, "MemorySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Volume state is MEDIA_SHARED, path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v7    # "volumePreference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v8    # "volumeState":Ljava/lang/String;
    .end local v9    # "writePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 142
    .local v5, "primaryExternalStorage":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 143
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 145
    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_3
    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 150
    .local v2, "entries":[Ljava/lang/CharSequence;
    aput-object v5, v2, v10

    .line 151
    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 153
    sget-boolean v11, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->isExSdcardInserted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v1, v10

    .line 154
    .local v1, "enable":Z
    :cond_5
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 142
    .end local v1    # "enable":Z
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getResourceId(II)I
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    .end local p1    # "usbResId":I
    :goto_0
    return p1

    .restart local p1    # "usbResId":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 315
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public initMtkCategory()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initApkInstaller()V

    .line 291
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initInstallLocation()V

    .line 292
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->initDefaultWriteDisk()V

    .line 293
    return-void
.end method

.method public isAddInternalCategory()Z
    .locals 1

    .prologue
    .line 333
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 337
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInUMSState()Z
    .locals 8

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 303
    .local v3, "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v3}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "writePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "volumeState":Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    const-string v6, "MemorySettings"

    const-string v7, "Current is UMS state, remove the unmount dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v6, 0x1

    .line 310
    .end local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :goto_1
    return v6

    .line 302
    .restart local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .restart local v4    # "volumeState":Ljava/lang/String;
    .restart local v5    # "writePath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v3    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v4    # "volumeState":Ljava/lang/String;
    .end local v5    # "writePath":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public mount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 343
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v1, :cond_0

    const-string v1, "/storage/sdcard1"

    sget-object v2, Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;-><init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    .line 347
    .local v0, "dialog":Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SwapAlert"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 351
    .end local v0    # "dialog":Lcom/mediatek/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    goto :goto_0
.end method

.method public registerSdSwapReceiver(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;>;"
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v1, :cond_0

    .line 412
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.SD_SWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setUsbEntranceState(Landroid/hardware/usb/UsbManager;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usb"    # Landroid/view/MenuItem;

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 453
    .local v0, "isUsbCableInserted":Z
    :goto_0
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 454
    return-void

    .line 452
    .end local v0    # "isUsbCableInserted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 401
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTI_PARTITION_MOUNT_ONLY_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-static {p1}, Landroid/os/Environment;->isUsbotg(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 406
    :goto_0
    sput-object p1, Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    .line 407
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    .line 408
    return-void

    .line 404
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    goto :goto_0
.end method

.method public unRegisterSdSwapReceiver()V
    .locals 2

    .prologue
    .line 420
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    :cond_0
    return-void
.end method

.method public updateMtkCategory()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    .line 297
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateAPKInstaller()V

    .line 298
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    .line 299
    return-void
.end method
