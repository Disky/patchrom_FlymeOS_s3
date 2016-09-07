.class public Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
.super Ljava/lang/Object;
.source "UsbSettingsExts.java"


# static fields
.field private static sStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private isRemoveUsbStorageAndCdrom:Z

.field private mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mCurrentFunction:Ljava/lang/String;

.field private mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mNeedExit:Z

.field private mNeedUpdate:Z

.field private mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

.field private mRadioButtonPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 79
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    .line 84
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isRemoveUsbStorageAndCdrom:Z

    return-void
.end method

.method private static getStorageManager()Landroid/os/storage/StorageManager;
    .locals 4

    .prologue
    .line 103
    sget-object v1, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/storage/StorageManager;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    sput-object v1, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->sStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->sStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 107
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHaveExternalSDCard()Z
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 92
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 93
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 94
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mounted"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 99
    :goto_1
    return v3

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addUsbSettingsItem(Lcom/android/extrasettings/deviceinfo/UsbSettings;)Landroid/preference/PreferenceScreen;
    .locals 14
    .param p1, "usbSettings"    # Lcom/android/extrasettings/deviceinfo/UsbSettings;

    .prologue
    const v13, 0x7f0900e0

    const v12, 0x7f0900df

    .line 115
    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 116
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 214
    .end local v6    # "root":Landroid/preference/PreferenceScreen;
    :goto_0
    return-object v6

    .line 118
    .restart local v6    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v10, "usb_mtp"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 119
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v10, "usb_ptp"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 123
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-boolean v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isRemoveUsbStorageAndCdrom:Z

    if-eqz v10, :cond_4

    .line 134
    :goto_1
    invoke-virtual {p1}, Lcom/android/extrasettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 136
    .local v5, "context":Landroid/content/Context;
    const-string v10, "ro.sys.usb.storage.type"

    const-string v11, "mtp"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "umsConfig":Ljava/lang/String;
    const-string v10, "mtp,mass_storage"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 140
    .local v8, "umsExist":Z
    if-eqz v8, :cond_1

    .line 141
    new-instance v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 142
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    const v11, 0x7f0900d8

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 143
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    const v11, 0x7f0900d9

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 144
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    const-string v10, "usb_category"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 151
    .local v9, "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    iget-boolean v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isRemoveUsbStorageAndCdrom:Z

    if-eqz v10, :cond_5

    .line 172
    .end local v9    # "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_2
    const-string v10, "ro.sys.usb.charging.only"

    const-string v11, "no"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "chargeConfig":Ljava/lang/String;
    const-string v10, "yes"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 175
    .local v4, "chargeExist":Z
    if-eqz v4, :cond_2

    .line 176
    new-instance v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 177
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    const v11, 0x7f0900da

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 178
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    const v11, 0x7f0900dc

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 179
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    const-string v10, "ro.sys.usb.bicr"

    const-string v11, "no"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "bicrConfig":Ljava/lang/String;
    const-string v10, "yes"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 187
    .local v2, "bicrExist":Z
    if-eqz v2, :cond_3

    .line 188
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "bicrCategory":Landroid/preference/PreferenceCategory;
    const v10, 0x7f0900db

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 193
    iget-boolean v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isRemoveUsbStorageAndCdrom:Z

    if-eqz v10, :cond_7

    .line 195
    new-instance v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 196
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 197
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, v13}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 198
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    .end local v0    # "bicrCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    :goto_3
    const-string v10, "UsbSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "umsExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " chargeExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bicrExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .end local v1    # "bicrConfig":Ljava/lang/String;
    .end local v2    # "bicrExist":Z
    .end local v3    # "chargeConfig":Ljava/lang/String;
    .end local v4    # "chargeExist":Z
    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "umsConfig":Ljava/lang/String;
    .end local v8    # "umsExist":Z
    :cond_4
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 160
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v7    # "umsConfig":Ljava/lang/String;
    .restart local v8    # "umsExist":Z
    .restart local v9    # "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    :cond_5
    sget-boolean v10, Lcom/mediatek/settings/FeatureOption;->MTK_SHARED_SDCARD:Z

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->isHaveExternalSDCard()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    :cond_6
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOrder(I)V

    .line 163
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 202
    .end local v9    # "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    .restart local v0    # "bicrCategory":Landroid/preference/PreferenceCategory;
    .restart local v1    # "bicrConfig":Ljava/lang/String;
    .restart local v2    # "bicrExist":Z
    .restart local v3    # "chargeConfig":Ljava/lang/String;
    .restart local v4    # "chargeExist":Z
    :cond_7
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    new-instance v10, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 204
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, v12}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(I)V

    .line 205
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, v13}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setSummary(I)V

    .line 206
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v10, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public dealWithBroadcastEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getCurrentFunction()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "currentFunction":Ljava/lang/String;
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    const-string v6, "USB_HW_DISCONNECTED"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v5

    .line 295
    .local v2, "isHwUsbConnected":Z
    :cond_0
    if-eqz v2, :cond_3

    .line 296
    const-string v6, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 297
    .local v3, "isPcKnowMe":Z
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "charging"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 299
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 317
    .end local v2    # "isHwUsbConnected":Z
    .end local v3    # "isPcKnowMe":Z
    :cond_2
    :goto_0
    return-void

    .line 301
    .restart local v2    # "isHwUsbConnected":Z
    :cond_3
    const-string v6, "charging"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 302
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    goto :goto_0

    .line 304
    .end local v2    # "isHwUsbConnected":Z
    :cond_4
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 306
    .local v4, "plugType":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 307
    const-string v6, "charging"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    goto :goto_0

    .line 311
    :cond_5
    sget-boolean v6, Lcom/mediatek/settings/FeatureOption;->MTK_DUAL_INPUT_CHARGER_SUPPORT:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    .line 314
    :cond_6
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    goto :goto_0
.end method

.method public getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 276
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 279
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFunction(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 248
    const-string v0, "none"

    .line 249
    .local v0, "function":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v0, "mtp"

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const-string v0, "ptp"

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const-string v0, "mass_storage"

    goto :goto_0

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    const-string v0, "charging"

    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string v0, "bicr"

    goto :goto_0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    return-object v0
.end method

.method public isMakeDefault(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedExit()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    return v0
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 325
    return-void
.end method

.method public updateCheckedStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v3, "mtp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 238
    .local v0, "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 239
    .local v2, "usb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 227
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "usb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_0
    const-string v3, "ptp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    goto :goto_0

    .line 229
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_1
    const-string v3, "mass_storage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    goto :goto_0

    .line 231
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_2
    const-string v3, "charging"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    goto :goto_0

    .line 233
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_3
    const-string v3, "bicr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 234
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    goto :goto_0

    .line 236
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    goto :goto_0

    .line 241
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public updateEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mRadioButtonPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    .line 219
    .local v1, "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v1, p1}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_0

    .line 221
    .end local v1    # "preference":Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_0
    return-void
.end method
