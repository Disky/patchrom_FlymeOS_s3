.class public Lcom/v/smartwake/SmartWakeSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "SmartWakeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAppsPerCategory:Landroid/preference/PreferenceCategory;

.field private mCheckBoxDown:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxRight:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxU:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxUp:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mSwitchChecked:Z

.field private mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

.field private mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

.field private mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

.field private mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

.field private mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mValidListener:Z

    return-void
.end method

.method private initGestureProperties()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.smartwake_u"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.smartwake_up"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 345
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.smartwake_down"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 346
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.smartwake_left"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.smartwake_right"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    const-string v0, "persist.sys.smartwake_o"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setChecked(Z)V

    .line 349
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    const-string v0, "persist.sys.smartwake_w"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setChecked(Z)V

    .line 350
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    const-string v0, "persist.sys.smartwake_c"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setChecked(Z)V

    .line 351
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    const-string v0, "persist.sys.smartwake_e"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    const-string v3, "persist.sys.smartwake_m"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_13

    :goto_9
    invoke-virtual {v0, v1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setChecked(Z)V

    .line 353
    const-string v0, "persist.sys.smartwake_u"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_0
    const-string v0, "persist.sys.smartwake_up"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 357
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_1
    const-string v0, "persist.sys.smartwake_down"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 360
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_2
    const-string v0, "persist.sys.smartwake_right"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 363
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    :cond_3
    const-string v0, "persist.sys.smartwake_left"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 366
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_4
    const-string v0, "persist.sys.smartwake_o"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 369
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    :cond_5
    const-string v0, "persist.sys.smartwake_e"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 372
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_6
    const-string v0, "persist.sys.smartwake_w"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 375
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_7
    const-string v0, "persist.sys.smartwake_c"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 378
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_8
    const-string v0, "persist.sys.smartwake_m"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 381
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 343
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 344
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 345
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 346
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 347
    goto/16 :goto_4

    :cond_f
    move v0, v2

    .line 348
    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 349
    goto/16 :goto_6

    :cond_11
    move v0, v2

    .line 350
    goto/16 :goto_7

    :cond_12
    move v0, v2

    .line 351
    goto/16 :goto_8

    :cond_13
    move v1, v2

    .line 352
    goto/16 :goto_9
.end method

.method private searchGestureFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 302
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gesture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    aget-object v3, v1, v2

    .line 306
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v3

    .line 301
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/v/smartwake/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 340
    return-void
.end method

.method private writeFile(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/v/smartwake/SmartWakeSettings;->searchGestureFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "fileString":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 313
    iget-object v4, p0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    const-string v5, "GESTURE FILE NOT FOUND"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gesture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 319
    .local v3, "mWriter":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 321
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileString":Ljava/lang/String;
    .end local v3    # "mWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t open gesture device"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    const-string v3, "SmartWakeSettings"

    const-string v4, "onActivityCreated() :"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/v/smartwake/SmartWakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 207
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 208
    iget-object v3, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 210
    const-string v3, "persist.sys.smartwake_switch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchChecked:Z

    .line 211
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchChecked:Z

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 213
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->setCheckBoxEnabled(Z)V

    .line 214
    invoke-direct {p0}, Lcom/v/smartwake/SmartWakeSettings;->initGestureProperties()V

    .line 216
    return-void

    :cond_0
    move v1, v2

    .line 210
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v1, "SmartWakeSettings"

    const-string v2, "onCreate() :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/v/smartwake/SmartWakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/v/smartwake/SmartWakeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, "resolver":Landroid/content/ContentResolver;
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v1, "smartwake_support_gestures"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    .line 101
    const-string v1, "smartwake_settings_u"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    .line 102
    const-string v1, "smartwake_settings_up"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    .line 103
    const-string v1, "smartwake_settings_down"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v1, "smartwake_settings_right"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "smartwake_settings_left"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v1, "smartwake_settings_c"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/v/smartwake/CustomizedSwitchPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    .line 107
    const-string v1, "smartwake_settings_e"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/v/smartwake/CustomizedSwitchPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    .line 108
    const-string v1, "smartwake_settings_w"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/v/smartwake/CustomizedSwitchPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    .line 109
    const-string v1, "smartwake_settings_m"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/v/smartwake/CustomizedSwitchPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    .line 110
    const-string v1, "smartwake_settings_o"

    invoke-virtual {p0, v1}, Lcom/v/smartwake/SmartWakeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/v/smartwake/CustomizedSwitchPreference;

    iput-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    .line 112
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/v/smartwake/CustomizedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 221
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/smartwake/SmartWakeSettings;->mValidListener:Z

    .line 197
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 198
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 249
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxU:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 250
    const-string v2, "persist.sys.smartwake_u"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_U_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_u"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 250
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxUp:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 253
    const-string v2, "persist.sys.smartwake_up"

    if-eqz v0, :cond_3

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_UP_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_up"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    :cond_3
    const-string v1, "0"

    goto :goto_2

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxDown:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_6

    .line 256
    const-string v2, "persist.sys.smartwake_down"

    if-eqz v0, :cond_5

    const-string v1, "1"

    :goto_3
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_DOWN_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_down"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 256
    :cond_5
    const-string v1, "0"

    goto :goto_3

    .line 258
    :cond_6
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxRight:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_8

    .line 259
    const-string v2, "persist.sys.smartwake_right"

    if-eqz v0, :cond_7

    const-string v1, "1"

    :goto_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_RIGHT_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_right"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 259
    :cond_7
    const-string v1, "0"

    goto :goto_4

    .line 261
    :cond_8
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mCheckBoxLeft:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_a

    .line 262
    const-string v2, "persist.sys.smartwake_left"

    if-eqz v0, :cond_9

    const-string v1, "1"

    :goto_5
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_LEFT_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_left"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 262
    :cond_9
    const-string v1, "0"

    goto :goto_5

    .line 264
    :cond_a
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_c

    .line 265
    const-string v2, "persist.sys.smartwake_c"

    if-eqz v0, :cond_b

    const-string v1, "1"

    :goto_6
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_C_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_c"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 265
    :cond_b
    const-string v1, "0"

    goto :goto_6

    .line 267
    :cond_c
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_e

    .line 268
    const-string v2, "persist.sys.smartwake_e"

    if-eqz v0, :cond_d

    const-string v1, "1"

    :goto_7
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_E_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_e"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 268
    :cond_d
    const-string v1, "0"

    goto :goto_7

    .line 270
    :cond_e
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_10

    .line 271
    const-string v2, "persist.sys.smartwake_w"

    if-eqz v0, :cond_f

    const-string v1, "1"

    :goto_8
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_W_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_w"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :cond_f
    const-string v1, "0"

    goto :goto_8

    .line 273
    :cond_10
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_12

    .line 274
    const-string v2, "persist.sys.smartwake_m"

    if-eqz v0, :cond_11

    const-string v1, "1"

    :goto_9
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_M_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_m"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 274
    :cond_11
    const-string v1, "0"

    goto :goto_9

    .line 276
    :cond_12
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_0

    .line 277
    const-string v2, "persist.sys.smartwake_o"

    if-eqz v0, :cond_13

    const-string v1, "1"

    :goto_a
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "SmartWakeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : SMARTWAKE_O_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.smartwake_o"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :cond_13
    const-string v1, "0"

    goto :goto_a
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 226
    const-string v1, "SmartWakeSettings"

    const-string v2, "onPreferenceClick() :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "allAppsIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.v.smartwake.AllAppsListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_1

    .line 230
    const-string v1, "gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    return v3

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_2

    .line 232
    const-string v1, "gesture"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_3

    .line 234
    const-string v1, "gesture"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_4

    .line 236
    const-string v1, "gesture"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    if-ne p1, v1, :cond_0

    .line 238
    const-string v1, "gesture"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 24

    .prologue
    .line 131
    new-instance v14, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v14, "mainIntent":Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 135
    .local v7, "allIntentApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v20, "persist.sys.smartwake_c_name"

    const-string v21, "com.android.gallery3d&com.android.camera.CameraLauncher"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v15, v20, v21

    .line 136
    .local v15, "packageNameC":Ljava/lang/String;
    const-string v20, "persist.sys.smartwake_c_name"

    const-string v21, "com.android.gallery3d&com.android.camera.CameraLauncher"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v2, v20, v21

    .line 137
    .local v2, "activityNameC":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_0

    .line 138
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 139
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "appNameC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceC:Lcom/v/smartwake/CustomizedSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090b60

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/v/smartwake/CustomizedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    .end local v8    # "appNameC":Ljava/lang/String;
    :cond_0
    const-string v20, "persist.sys.smartwake_e_name"

    const-string v21, "com.android.browser&com.android.browser.BrowserActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v16, v20, v21

    .line 146
    .local v16, "packageNameE":Ljava/lang/String;
    const-string v20, "persist.sys.smartwake_e_name"

    const-string v21, "com.android.browser&com.android.browser.BrowserActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v3, v20, v21

    .line 147
    .local v3, "activityNameE":Ljava/lang/String;
    const/4 v13, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_1

    .line 148
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 149
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "appNameE":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceE:Lcom/v/smartwake/CustomizedSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090b62

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/v/smartwake/CustomizedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    .end local v9    # "appNameE":Ljava/lang/String;
    :cond_1
    const-string v20, "persist.sys.smartwake_w_name"

    const-string v21, "com.mediatek.filemanager&com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v19, v20, v21

    .line 156
    .local v19, "packageNameW":Ljava/lang/String;
    const-string v20, "persist.sys.smartwake_w_name"

    const-string v21, "com.mediatek.filemanager&com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v6, v20, v21

    .line 157
    .local v6, "activityNameW":Ljava/lang/String;
    const/4 v13, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_2

    .line 158
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 159
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "appNameW":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceW:Lcom/v/smartwake/CustomizedSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090b61

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/v/smartwake/CustomizedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    .end local v12    # "appNameW":Ljava/lang/String;
    :cond_2
    const-string v20, "persist.sys.smartwake_m_name"

    const-string v21, "com.android.music&com.android.music.MusicBrowserActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v17, v20, v21

    .line 166
    .local v17, "packageNameM":Ljava/lang/String;
    const-string v20, "persist.sys.smartwake_m_name"

    const-string v21, "com.android.music&com.android.music.MusicBrowserActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v4, v20, v21

    .line 167
    .local v4, "activityNameM":Ljava/lang/String;
    const/4 v13, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    .line 168
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 169
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, "appNameM":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceM:Lcom/v/smartwake/CustomizedSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090b64

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/v/smartwake/CustomizedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    .end local v10    # "appNameM":Ljava/lang/String;
    :cond_3
    const-string v20, "persist.sys.smartwake_o_name"

    const-string v21, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v18, v20, v21

    .line 176
    .local v18, "packageNameO":Ljava/lang/String;
    const-string v20, "persist.sys.smartwake_o_name"

    const-string v21, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v5, v20, v21

    .line 177
    .local v5, "activityNameO":Ljava/lang/String;
    const/4 v13, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_4

    .line 178
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 179
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "appNameO":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchPreferenceO:Lcom/v/smartwake/CustomizedSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090b63

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/v/smartwake/CustomizedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    .end local v11    # "appNameO":Ljava/lang/String;
    :cond_4
    invoke-super/range {p0 .. p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mValidListener:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/v/smartwake/SmartWakeSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 187
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/v/smartwake/SmartWakeSettings;->mValidListener:Z

    .line 189
    :cond_5
    return-void

    .line 137
    .end local v3    # "activityNameE":Ljava/lang/String;
    .end local v4    # "activityNameM":Ljava/lang/String;
    .end local v5    # "activityNameO":Ljava/lang/String;
    .end local v6    # "activityNameW":Ljava/lang/String;
    .end local v16    # "packageNameE":Ljava/lang/String;
    .end local v17    # "packageNameM":Ljava/lang/String;
    .end local v18    # "packageNameO":Ljava/lang/String;
    .end local v19    # "packageNameW":Ljava/lang/String;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 147
    .restart local v3    # "activityNameE":Ljava/lang/String;
    .restart local v16    # "packageNameE":Ljava/lang/String;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 157
    .restart local v6    # "activityNameW":Ljava/lang/String;
    .restart local v19    # "packageNameW":Ljava/lang/String;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 167
    .restart local v4    # "activityNameM":Ljava/lang/String;
    .restart local v17    # "packageNameM":Ljava/lang/String;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 177
    .restart local v5    # "activityNameO":Ljava/lang/String;
    .restart local v18    # "packageNameO":Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 286
    if-eqz p2, :cond_1

    .line 287
    const-string v0, "SmartWakeSettings"

    const-string v1, "onSwitchChanged() isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p2}, Lcom/v/smartwake/SmartWakeSettings;->setCheckBoxEnabled(Z)V

    .line 289
    const-string v1, "persist.sys.smartwake_switch"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/v/smartwake/SmartWakeSettings;->writeFile(I)V

    .line 297
    :goto_1
    return-void

    .line 289
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 292
    :cond_1
    const-string v0, "SmartWakeSettings"

    const-string v1, "onSwitchChanged() noChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0, p2}, Lcom/v/smartwake/SmartWakeSettings;->setCheckBoxEnabled(Z)V

    .line 294
    const-string v1, "persist.sys.smartwake_switch"

    if-eqz p2, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/v/smartwake/SmartWakeSettings;->writeFile(I)V

    goto :goto_1

    .line 294
    :cond_2
    const-string v0, "0"

    goto :goto_2
.end method
