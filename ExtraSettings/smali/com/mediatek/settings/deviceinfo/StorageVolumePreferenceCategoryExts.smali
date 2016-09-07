.class public Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategoryExts.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInternalSD:Z

.field private mIsOTGDevice:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    .line 38
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    .line 42
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    .line 44
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage description :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    if-nez v3, :cond_2

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_1
    :goto_0
    return-object v1

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "sdCardString":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 159
    .local v2, "tr":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private isVolumeSwapping()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v3, "sys.sd.swapping"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "isSwapping":Z
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemProperty [sys.sd.swapping] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "enable":Z
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v3, :cond_0

    .line 67
    iget-boolean v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    if-eqz v3, :cond_1

    move v0, v2

    .line 69
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method private isVolumeUnmounting()Z
    .locals 4

    .prologue
    .line 73
    const-string v1, "sys.sd.unmounting"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "flag":Ljava/lang/String;
    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperty [sys.sd.unmounting] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getFormatString(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdateProtect()Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->isVolumeUnmounting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->isVolumeSwapping()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initPhoneStorageMountTogglePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/os/storage/StorageManager;)V
    .locals 4
    .param p1, "root"    # Landroid/preference/PreferenceCategory;
    .param p2, "mountToggle"    # Landroid/preference/Preference;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 115
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 119
    .local v0, "isMounted":Z
    :goto_1
    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    const-string v2, "StorageVolumePreferenceCategory"

    const-string v3, "Phone storage not in mounted state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "isMounted":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isInternalVolume()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->isSomeStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    .line 98
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsOTGDevice:Z

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    .line 102
    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolumeTitle(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 53
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-nez v2, :cond_0

    const v0, 0x10405a9

    .line 55
    .local v0, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .end local v0    # "resId":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 53
    :cond_0
    const v0, 0x7f0905bb

    goto :goto_0

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public updateUserOwnerState(Landroid/os/UserManager;Landroid/preference/Preference;)V
    .locals 2
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 86
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_OWNER_SDCARD_ONLY_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    if-nez v0, :cond_0

    .line 89
    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "Not the owner, do not allow to mount / unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p2, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method
