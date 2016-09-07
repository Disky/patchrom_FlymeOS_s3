.class public Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;
.super Ljava/lang/Object;
.source "DeviceInfoSettingsExts.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

.field private mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field private mRes:Landroid/content/res/Resources;

.field private mRootContainer:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceFragment;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    .line 50
    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 51
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDeviceInfoSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    .line 52
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mRes:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method private findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private getExternalModemSlot()I
    .locals 5

    .prologue
    const v4, 0x7f09015e

    .line 208
    const-string v2, "ril.external.md"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "md":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 214
    .local v1, "modemSlot":I
    :goto_0
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modemSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v1

    .line 212
    .end local v1    # "modemSlot":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "modemSlot":I
    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initBasebandVersion()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 134
    const-string v0, "gsm.version.baseband"

    .line 135
    .local v0, "baseband":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getExternalModemSlot()I

    move-result v3

    .line 136
    .local v3, "modemSlot":I
    if-eqz v3, :cond_2

    move v2, v4

    .line 137
    .local v2, "hasExternalModem":Z
    :goto_0
    if-eqz v2, :cond_0

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->PURE_AP_USE_EXTERNAL_MODEM:Z

    if-nez v5, :cond_0

    if-ne v3, v4, :cond_0

    .line 139
    const-string v0, "gsm.version.baseband.2"

    .line 141
    :cond_0
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseband = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v5, "baseband_version"

    invoke-direct {p0, v5, v0}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v2, :cond_4

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->PURE_AP_USE_EXTERNAL_MODEM:Z

    if-nez v5, :cond_4

    .line 145
    const-string v1, "gsm.version.baseband.2"

    .line 146
    .local v1, "baseband2":Ljava/lang/String;
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->EVDO_DT_SUPPORT:Z

    if-eqz v5, :cond_3

    .line 147
    const-string v1, "cdma.version.baseband"

    .line 151
    :cond_1
    :goto_1
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baseband2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "baseband_version_2"

    invoke-direct {p0, v4, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->updateBasebandTitle()V

    .line 157
    .end local v1    # "baseband2":Ljava/lang/String;
    :goto_2
    return-void

    .line 136
    .end local v2    # "hasExternalModem":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    .restart local v1    # "baseband2":Ljava/lang/String;
    .restart local v2    # "hasExternalModem":Z
    :cond_3
    if-ne v3, v4, :cond_1

    .line 149
    const-string v1, "gsm.version.baseband"

    goto :goto_1

    .line 155
    .end local v1    # "baseband2":Ljava/lang/String;
    :cond_4
    const-string v4, "baseband_version_2"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->removePreference(Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f09015e

    invoke-direct {p0, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private softwareUpdateEntrance(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 238
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_SCOMO:Z

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "com.mediatek.mediatekdm"

    const-string v1, "com.mediatek.mediatekdm.scomo.DmScomoActivity"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SCOMO_ENTRY:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "com.mediatek.dm"

    const-string v1, "com.mediatek.dm.scomo.DmScomoActivity"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private systemUpdateEntrance(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 229
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "com.mediatek.systemupdate"

    const-string v1, "com.mediatek.systemupdate.MainEntry"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_FUMO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_FOTA_ENTRY:Z

    if-eqz v0, :cond_0

    .line 233
    :cond_2
    const-string v0, "com.mediatek.DMSWUPDATE"

    invoke-direct {p0, v0}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBasebandTitle()V
    .locals 9

    .prologue
    const v8, 0x7f090485

    .line 182
    const v4, 0x7f09047a

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "basebandversion":Ljava/lang/String;
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->EVDO_DT_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 187
    .local v3, "tr":Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "slot1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "slot2":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    :cond_0
    const-string v4, "GSM "

    const-string v5, "GSM"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v4, "CDMA "

    const-string v5, "CDMA"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .end local v3    # "tr":Ljava/util/Locale;
    :cond_1
    :goto_0
    const-string v4, "baseband_version"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    const-string v4, "baseband_version_2"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    return-void

    .line 195
    .end local v1    # "slot1":Ljava/lang/String;
    .end local v2    # "slot2":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09013e

    invoke-direct {p0, v5}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "slot1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09013f

    invoke-direct {p0, v5}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "slot2":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateTitleToActivityLabel(Ljava/lang/String;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v5

    .line 98
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    if-eqz v8, :cond_3

    .line 103
    const-string v8, "com.mediatek.systemupdate"

    const-string v9, "com.mediatek.systemupdate.MainEntry"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 116
    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 117
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 120
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 121
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 124
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 125
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    const-string v8, "DeviceInfoSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_MTK_SYSTEM_UPDATE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_3
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_FOTA_ENTRY:Z

    if-eqz v8, :cond_4

    .line 106
    const-string v8, "com.mediatek.dm"

    const-string v9, "com.mediatek.dm.fumo.DmEntry"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 108
    :cond_4
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_FUMO:Z

    if-eqz v8, :cond_2

    .line 110
    const-string v8, "com.mediatek.mediatekdm"

    const-string v9, "com.mediatek.mediatekdm.fumo.DmEntry"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 119
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "listSize":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public initMTKCustomization(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "parentPreference"    # Landroid/preference/PreferenceGroup;

    .prologue
    const v7, 0x7f09015e

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 58
    .local v0, "isOwner":Z
    :goto_0
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_FUMO:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_FOTA_ENTRY:Z

    if-eqz v5, :cond_7

    :cond_0
    move v2, v3

    .line 60
    .local v2, "isSystemUpdateSupport":Z
    :goto_1
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_MDM_SCOMO:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_SCOMO_ENTRY:Z

    if-eqz v5, :cond_8

    :cond_1
    move v1, v3

    .line 62
    .local v1, "isSoftwareUpdateSupport":Z
    :goto_2
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOwner : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSystemUpdateSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSoftwareUpdateSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v0, :cond_2

    if-nez v2, :cond_9

    .line 66
    :cond_2
    const-string v3, "mtk_system_update"

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->removePreference(Landroid/preference/Preference;)V

    .line 71
    :goto_3
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 72
    :cond_3
    const-string v3, "mtk_software_update"

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->removePreference(Landroid/preference/Preference;)V

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->initBasebandVersion()V

    .line 79
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    const-string v4, "device_model"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    const-string v4, "build_number"

    invoke-direct {p0, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->updateSummary(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mExt:Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;->addEpushPreference(Landroid/preference/PreferenceScreen;)V

    .line 86
    const-string v3, "custom_build_version"

    const-string v4, "ro.mediatek.version.release"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "custom_build_version"

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 91
    const-string v3, "custom_build_version"

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->removePreference(Landroid/preference/Preference;)V

    .line 94
    :cond_5
    return-void

    .end local v0    # "isOwner":Z
    .end local v1    # "isSoftwareUpdateSupport":Z
    .end local v2    # "isSystemUpdateSupport":Z
    :cond_6
    move v0, v4

    .line 57
    goto/16 :goto_0

    .restart local v0    # "isOwner":Z
    :cond_7
    move v2, v4

    .line 58
    goto/16 :goto_1

    .restart local v2    # "isSystemUpdateSupport":Z
    :cond_8
    move v1, v4

    .line 60
    goto/16 :goto_2

    .line 68
    .restart local v1    # "isSoftwareUpdateSupport":Z
    :cond_9
    const-string v3, "mtk_system_update"

    invoke-direct {p0, v3}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->updateTitleToActivityLabel(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCustomizedPreferenceTreeClick(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk_system_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->systemUpdateEntrance(Landroid/preference/Preference;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk_software_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->softwareUpdateEntrance(Landroid/preference/Preference;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_epush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "com.ctc.epush"

    const-string v1, "com.ctc.epush.IndexActivity"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/deviceinfo/DeviceInfoSettingsExts;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
