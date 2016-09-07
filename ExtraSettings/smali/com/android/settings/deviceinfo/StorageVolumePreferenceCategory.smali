.class public Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 146
    iput-object p2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 151
    :cond_0
    invoke-static {p1, p2}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 154
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 155
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 157
    new-instance v0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    .line 158
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolumeTitle(Landroid/preference/Preference;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    new-instance v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 140
    new-instance v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 162
    new-instance v0, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 554
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 559
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 445
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->measure()V

    .line 446
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 377
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 378
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 428
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 431
    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 437
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 441
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    .prologue
    const v8, 0x7f0904b0

    const v7, 0x7f0904ab

    const v6, 0x7f0904aa

    const v4, 0x7f0900d6

    const/4 v5, 0x0

    .line 281
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "state":Ljava/lang/String;
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferencesFromState, path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 289
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f09049d

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 290
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f090a82

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 297
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const-string v2, "4.5GB"

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getUpdateProtect()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0900d4

    const v4, 0x7f0904a7

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0900d5

    const v4, 0x7f0904a8

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 333
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_c

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 336
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    :cond_6
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    .line 343
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->updateUserOwnerState(Landroid/os/UserManager;Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 294
    :cond_8
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f09049c

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 310
    :cond_9
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    :cond_a
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getUpdateProtect()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2, v4, v6}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2, v7, v7}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :goto_4
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 318
    :cond_b
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2, v4, v6}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0900d7

    const v4, 0x7f0904a9

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 346
    :cond_c
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    .line 347
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0904ad

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 168
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 172
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 177
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 178
    .local v14, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    const/16 v17, 0x1

    .line 180
    .local v17, "showUsers":Z
    :goto_0
    new-instance v19, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    const v19, 0x7f09049e

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 185
    const v19, 0x7f09049c

    const v20, 0x7f08000d

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 186
    const v19, 0x7f090a82

    const v20, 0x7f08000e

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    const v19, 0x7f0904a0

    const v20, 0x7f08000f

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 195
    const v19, 0x7f0904a3

    const v20, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 196
    const v19, 0x7f0904a4

    const v20, 0x7f080012

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 197
    const v19, 0x7f0904a2

    const v20, 0x7f080010

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 198
    const v19, 0x7f0904a6

    const v20, 0x7f080013

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 199
    const v19, 0x7f0904a5

    const v20, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "apps"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "dcim"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "music"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "downloads"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "misc"

    invoke-virtual/range {v19 .. v20}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_1
    const/16 v16, 0x1

    .line 212
    .local v16, "showDetails":Z
    :goto_1
    if-eqz v16, :cond_6

    .line 213
    if-eqz v17, :cond_2

    .line 214
    new-instance v19, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    if-eqz v17, :cond_6

    .line 225
    new-instance v19, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f0904c2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 227
    const/4 v7, 0x0

    .line 228
    .local v7, "count":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 229
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_5

    const v5, 0x7f080015

    .line 231
    .local v5, "colorRes":I
    :goto_3
    new-instance v18, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 233
    .local v18, "userPref":Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 235
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 173
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "showDetails":Z
    .end local v17    # "showUsers":Z
    .end local v18    # "userPref":Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 174
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 178
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 211
    .restart local v17    # "showUsers":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 229
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v16    # "showDetails":Z
    :cond_5
    const v5, 0x7f080016

    goto :goto_3

    .line 239
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 241
    .local v13, "isRemovable":Z
    :goto_4
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 242
    if-eqz v13, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0904a7

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0904a8

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v19

    if-nez v19, :cond_b

    const/4 v4, 0x1

    .line 252
    .local v4, "allowFormat":Z
    :goto_6
    if-eqz v4, :cond_7

    .line 253
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0904ac

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getFormatString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0904ad

    invoke-virtual/range {v20 .. v21}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getFormatString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 261
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->isInternalVolume()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 262
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0904b8

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0904b9

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :cond_8
    :goto_7
    return-void

    .line 239
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 247
    .restart local v13    # "isRemovable":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->initPhoneStorageMountTogglePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/os/storage/StorageManager;)V

    goto/16 :goto_5

    .line 251
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 267
    .restart local v4    # "allowFormat":Z
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 271
    :catch_1
    move-exception v19

    goto :goto_7
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 498
    const/4 v1, 0x0

    .line 503
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 505
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/extrasettings/MediaFormat;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 507
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 528
    :cond_0
    :goto_0
    return-object v1

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_2

    .line 509
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/extrasettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    .line 512
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 514
    :cond_3
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_4

    .line 515
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 517
    :cond_4
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_5

    .line 518
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 522
    :cond_5
    iget-object v3, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 524
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/android/extrasettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 470
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 466
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 474
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/extrasettings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 450
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 451
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 455
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 456
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 460
    iput-object p2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 461
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 462
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const-string v3, "16 GB"

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iput-wide p1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 366
    sub-long v0, p1, p3

    .line 368
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->clear()V

    .line 369
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 370
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->commit()V

    .line 372
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 373
    return-void

    .line 359
    .end local v0    # "usedSize":J
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateDetails(Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17
    .param p1, "details"    # Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 387
    .local v7, "showDetails":Z
    :goto_0
    if-nez v7, :cond_2

    .line 425
    :goto_1
    return-void

    .line 386
    .end local v7    # "showDetails":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 391
    .restart local v7    # "showDetails":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v11, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const-string v14, "16 GB"

    invoke-virtual {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mSystemCode:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    const-string v14, "4.5GB"

    invoke-virtual {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->clear()V

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 404
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v2

    .line 406
    .local v2, "dcimSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 408
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v8

    .line 411
    .local v8, "musicSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 413
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 414
    .local v4, "downloadsSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v5}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 416
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v15}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    .line 419
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    .line 420
    .local v10, "userPref":Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v11, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 421
    .local v12, "userSize":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/extrasettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_3

    .line 394
    .end local v2    # "dcimSize":J
    .end local v4    # "downloadsSize":J
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "musicSize":J
    .end local v10    # "userPref":Lcom/android/extrasettings/deviceinfo/StorageItemPreference;
    .end local v12    # "userSize":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/extrasettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/extrasettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/extrasettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 424
    .restart local v2    # "dcimSize":J
    .restart local v4    # "downloadsSize":J
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "musicSize":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/extrasettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v11}, Lcom/android/extrasettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public updateStorageVolumePrefCategory(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 563
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD SWAP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iput-object p1, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 565
    if-eqz p1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p1}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolume(Landroid/os/storage/StorageVolume;)V

    .line 569
    iget-object v0, p0, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolumeTitle(Landroid/preference/Preference;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 571
    invoke-direct {p0}, Lcom/android/extrasettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 572
    return-void
.end method
