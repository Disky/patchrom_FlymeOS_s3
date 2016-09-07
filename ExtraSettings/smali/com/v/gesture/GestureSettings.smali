.class public Lcom/v/gesture/GestureSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static NEW_SENSOR_STATE_PATH:Ljava/lang/String;

.field private static PSENSOR_STATE_PATH:Ljava/lang/String;


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mAppsPerCategory:Landroid/preference/PreferenceCategory;

.field private mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxClock:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxMms:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxMute:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mHelpPerCategory:Landroid/preference/PreferenceCategory;

.field private mImageView:Landroid/widget/ImageView;

.field private mLearnActionPreScreen:Landroid/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mSwitchChecked:Z

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "/sys/class/input/input3/ges_power_state"

    sput-object v0, Lcom/v/gesture/GestureSettings;->NEW_SENSOR_STATE_PATH:Ljava/lang/String;

    .line 95
    const-string v0, "/sys/bus/platform/drivers/als_ps/ps"

    sput-object v0, Lcom/v/gesture/GestureSettings;->PSENSOR_STATE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/gesture/GestureSettings;->mValidListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/v/gesture/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/v/gesture/GestureSettings;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->showDialog()V

    return-void
.end method

.method private customViewAsProperty()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 185
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isGlleryCameryGestureSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isMusicGestureSupport()Z

    move-result v3

    if-nez v3, :cond_c

    .line 190
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isLauncherGestureSupport()Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isMmsGestureSupport()Z

    move-result v3

    if-nez v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_3
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isCallAnswerGestureSupport()Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_4
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isDialerFlipMuteSupport()Z

    move-result v3

    if-nez v3, :cond_5

    .line 221
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_5
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isKeyguardGestureSupport()Z

    move-result v3

    if-nez v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_6
    const-string v3, "ro.init.gesture_browser"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_7

    .line 227
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_7
    const-string v3, "ro.init.gesture_contacts"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_8

    .line 230
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    :cond_8
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isFmRadioGestureSupport()Z

    move-result v3

    if-nez v3, :cond_9

    .line 233
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    :cond_9
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isClockFlipMuteSupport()Z

    move-result v3

    if-nez v3, :cond_a

    .line 236
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_a
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->isContactsPhoneGestureSupport()Z

    move-result v3

    if-nez v3, :cond_b

    .line 239
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_b
    return-void

    .line 196
    :cond_c
    const/4 v1, 0x0

    .line 198
    .local v1, "isGoogleOrigMusicExist":Z
    :try_start_0
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 199
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.music"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v1, 0x1

    .line 205
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-nez v1, :cond_1

    .line 206
    const-string v3, "GestureSettings"

    const-string v4, "google original music not founded, remove mCheckBoxMusic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GestureSettings"

    const-string v4, "google original music not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initGestureProperties()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_camera"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 394
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_gallery"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_music"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_launcher"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_mms"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_mute"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_keyguard"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_browser"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_contacts"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_fmradio"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.gesture_clock"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    const-string v3, "persist.sys.gesture_pcontacts"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_c

    :goto_c
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    return-void

    :cond_0
    move v0, v2

    .line 393
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 395
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 396
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 398
    goto :goto_4

    :cond_5
    move v0, v2

    .line 399
    goto :goto_5

    :cond_6
    move v0, v2

    .line 400
    goto :goto_6

    :cond_7
    move v0, v2

    .line 401
    goto :goto_7

    :cond_8
    move v0, v2

    .line 403
    goto :goto_8

    :cond_9
    move v0, v2

    .line 404
    goto :goto_9

    :cond_a
    move v0, v2

    .line 405
    goto :goto_a

    :cond_b
    move v0, v2

    .line 406
    goto :goto_b

    :cond_c
    move v1, v2

    .line 407
    goto :goto_c
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "gesture_settings_help"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mHelpPerCategory:Landroid/preference/PreferenceCategory;

    .line 148
    const-string v0, "gesture_settings_learn_action"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mLearnActionPreScreen:Landroid/preference/PreferenceScreen;

    .line 149
    const-string v0, "gesture_support_apps"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mAppsPerCategory:Landroid/preference/PreferenceCategory;

    .line 153
    const-string v0, "gesture_settings_mms"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    .line 154
    const-string v0, "gesture_settings_gallery"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v0, "gesture_settings_camera"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v0, "gesture_settings_music"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v0, "gesture_settings_launcher"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v0, "gesture_settings_phone"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v0, "gesture_settings_mute"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v0, "gesture_settings_keyguard"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    .line 161
    const-string v0, "gesture_settings_browser"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v0, "gesture_settings_contacts"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    .line 163
    const-string v0, "gesture_settings_fmradio"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v0, "gesture_settings_clock"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v0, "gesture_settings_contacts_phone"

    invoke-virtual {p0, v0}, Lcom/v/gesture/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    return-void
.end method

.method private isCallAnswerGestureSupport()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method private isClockFlipMuteSupport()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method private isContactsPhoneGestureSupport()Z
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method private isDialerFlipMuteSupport()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method private isFmRadioGestureSupport()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method private isGlleryCameryGestureSupport()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method private isKeyguardGestureSupport()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method private isLauncherGestureSupport()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method private isMmsGestureSupport()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method private isMusicGestureSupport()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method private setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 387
    return-void
.end method

.method private showDialog()V
    .locals 5

    .prologue
    .line 285
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 286
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400ec

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, "dialog":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f1001fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/v/gesture/GestureSettings;->mImageView:Landroid/widget/ImageView;

    .line 290
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/v/gesture/GestureSettings;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 291
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 293
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 294
    const v3, 0x7f090afd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 296
    const v3, 0x104000a

    new-instance v4, Lcom/v/gesture/GestureSettings$2;

    invoke-direct {v4, p0}, Lcom/v/gesture/GestureSettings$2;-><init>(Lcom/v/gesture/GestureSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    const-string v3, "GestureSettings"

    const-string v4, "onActivityCreated() :"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/v/gesture/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 250
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 251
    iget-object v3, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 253
    const-string v3, "persist.sys.gesture_switch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/v/gesture/GestureSettings;->mSwitchChecked:Z

    .line 254
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/v/gesture/GestureSettings;->mSwitchChecked:Z

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/v/gesture/GestureSettings;->setCheckBoxEnabled(Z)V

    .line 258
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->initGestureProperties()V

    .line 259
    return-void

    :cond_0
    move v1, v2

    .line 253
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const-string v1, "GestureSettings"

    const-string v2, "onCreate() :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/v/gesture/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/v/gesture/GestureSettings;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/v/gesture/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "resolver":Landroid/content/ContentResolver;
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/v/gesture/GestureSettings;->addPreferencesFromResource(I)V

    .line 134
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->initView()V

    .line 135
    invoke-direct {p0}, Lcom/v/gesture/GestureSettings;->customViewAsProperty()V

    .line 136
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mLearnActionPreScreen:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/v/gesture/GestureSettings$1;

    invoke-direct {v2, p0}, Lcom/v/gesture/GestureSettings$1;-><init>(Lcom/v/gesture/GestureSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 281
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 282
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/v/gesture/GestureSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/v/gesture/GestureSettings;->mValidListener:Z

    .line 275
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 276
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 315
    const-string v1, "GestureSettings"

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

    .line 316
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 319
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMms:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 320
    const-string v2, "persist.sys.gesture_mms"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_MMS_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_mms"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 320
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxGallery:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 323
    const-string v2, "persist.sys.gesture_gallery"

    if-eqz v0, :cond_3

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_GALLERY_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_gallery"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    :cond_3
    const-string v1, "0"

    goto :goto_2

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_6

    .line 326
    const-string v2, "persist.sys.gesture_camera"

    if-eqz v0, :cond_5

    const-string v1, "1"

    :goto_3
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_CAMERA_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_camera"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    :cond_5
    const-string v1, "0"

    goto :goto_3

    .line 328
    :cond_6
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMusic:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_8

    .line 329
    const-string v2, "persist.sys.gesture_music"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_MUSIC_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_music"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 329
    :cond_7
    const-string v1, "0"

    goto :goto_4

    .line 331
    :cond_8
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxLauncher:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_a

    .line 332
    const-string v2, "persist.sys.gesture_launcher"

    if-eqz v0, :cond_9

    const-string v1, "1"

    :goto_5
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_LAUNCHER_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_launcher"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 332
    :cond_9
    const-string v1, "0"

    goto :goto_5

    .line 334
    :cond_a
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxPhone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_c

    .line 335
    const-string v2, "persist.sys.gesture_phone"

    if-eqz v0, :cond_b

    const-string v1, "1"

    :goto_6
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_PHONE_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_phone"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 335
    :cond_b
    const-string v1, "0"

    goto :goto_6

    .line 337
    :cond_c
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxMute:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_e

    .line 338
    const-string v2, "persist.sys.gesture_mute"

    if-eqz v0, :cond_d

    const-string v1, "1"

    :goto_7
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_MUTE_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_mute"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 338
    :cond_d
    const-string v1, "0"

    goto :goto_7

    .line 340
    :cond_e
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxKeyguard:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_10

    .line 341
    const-string v2, "persist.sys.gesture_keyguard"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "1"

    :goto_8
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "GestureSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange() : GESTURE_KEYGUARD_FLAG = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.gesture_keyguard"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 341
    :cond_f
    const-string v1, "0"

    goto :goto_8

    .line 343
    :cond_10
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContacts:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_12

    .line 344
    const-string v2, "persist.sys.gesture_contacts"

    if-eqz v0, :cond_11

    const-string v1, "1"

    :goto_9
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string v1, "0"

    goto :goto_9

    .line 345
    :cond_12
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxBrowser:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_14

    .line 346
    const-string v2, "persist.sys.gesture_browser"

    if-eqz v0, :cond_13

    const-string v1, "1"

    :goto_a
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    const-string v1, "0"

    goto :goto_a

    .line 347
    :cond_14
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxFmRadio:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_16

    .line 348
    const-string v2, "persist.sys.gesture_fmradio"

    if-eqz v0, :cond_15

    const-string v1, "1"

    :goto_b
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string v1, "0"

    goto :goto_b

    .line 349
    :cond_16
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxClock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_18

    .line 350
    const-string v2, "persist.sys.gesture_clock"

    if-eqz v0, :cond_17

    const-string v1, "1"

    :goto_c
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    const-string v1, "0"

    goto :goto_c

    .line 351
    :cond_18
    iget-object v1, p0, Lcom/v/gesture/GestureSettings;->mCheckBoxContactsPhone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 352
    const-string v2, "persist.sys.gesture_pcontacts"

    if-eqz v0, :cond_19

    const-string v1, "1"

    :goto_d
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    const-string v1, "0"

    goto :goto_d
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 309
    const-string v0, "GestureSettings"

    const-string v1, "onPreferenceClick() :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 264
    iget-boolean v0, p0, Lcom/v/gesture/GestureSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/v/gesture/GestureSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/v/gesture/GestureSettings;->mValidListener:Z

    .line 268
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 359
    if-eqz p2, :cond_1

    .line 360
    const-string v0, "GestureSettings"

    const-string v1, "onSwitchChanged() isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "persist.sys.gesture_switch"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, p2}, Lcom/v/gesture/GestureSettings;->setCheckBoxEnabled(Z)V

    .line 368
    :goto_1
    return-void

    .line 361
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 364
    :cond_1
    const-string v0, "GestureSettings"

    const-string v1, "onSwitchChanged() noChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v1, "persist.sys.gesture_switch"

    if-eqz p2, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, p2}, Lcom/v/gesture/GestureSettings;->setCheckBoxEnabled(Z)V

    goto :goto_1

    .line 365
    :cond_2
    const-string v0, "0"

    goto :goto_2
.end method
