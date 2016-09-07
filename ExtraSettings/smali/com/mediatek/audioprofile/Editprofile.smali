.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "Editprofile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/Editprofile$H;,
        Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;
    }
.end annotation


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/TwoStatePreference;

.field private final mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

.field private mHapticFeedback:Landroid/preference/TwoStatePreference;

.field private mIsMeetingMode:Z

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/TwoStatePreference;

.field private mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mSIMSelectorTitle:Ljava/lang/String;

.field private mSelectRingtongType:I

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimId:J

.field private mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mSoundEffects:Landroid/preference/TwoStatePreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/TwoStatePreference;

.field private mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVoiceCapable:Z

.field private mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field public mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

.field private final mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 107
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;-><init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$1;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    .line 108
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$H;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$H;-><init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$1;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    .line 141
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 584
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$H;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/Editprofile;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceChangeToDatabase(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    return-object v0
.end method

.method private initNoVoiceCapablePref(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 351
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    return-void
.end method

.method private initNotification(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 281
    const-string v0, "notifications_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 282
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v1, "NOTIFICATION"

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 243
    .local v0, "parent":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initVolume(Landroid/preference/PreferenceScreen;)V

    .line 244
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initRingtoneAndNotification(Landroid/preference/PreferenceScreen;)V

    .line 245
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initSystemAudio()V

    .line 248
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->removePrefWhenSilentOrMeeting(Landroid/preference/PreferenceScreen;)V

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    if-eqz v1, :cond_2

    .line 258
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initVoiceCapablePref(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->initNoVoiceCapablePref(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private initRingtone(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 291
    const-string v0, "phone_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 292
    const-string v0, "video_call_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 293
    const-string v0, "sip_call_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 294
    return-void
.end method

.method private initRingtoneAndNotification(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->initNotification(Landroid/preference/PreferenceScreen;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->initRingtone(Landroid/preference/PreferenceScreen;)V

    .line 278
    return-void
.end method

.method private initSystemAudio()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "phone_vibrate"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    .line 298
    const-string v0, "audible_touch_tones"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    .line 299
    const-string v0, "audible_selection"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    .line 300
    const-string v0, "screen_lock_sounds"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    .line 301
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    .line 302
    const-string v0, "phone_vibrate"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 303
    const-string v0, "audible_touch_tones"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 304
    const-string v0, "audible_selection"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 305
    const-string v0, "screen_lock_sounds"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 306
    const-string v0, "haptic_feedback"

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 307
    return-void
.end method

.method private initVoiceCapablePref(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const v1, 0x7f090a02

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setTitle(I)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v1, "RING"

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 333
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v1, "RING"

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 344
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setNoNeedSIMSelector(Z)V

    .line 348
    :cond_1
    return-void
.end method

.method private initVolume(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 265
    const-string v0, "alarm_volume"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 266
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "ring_volume"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 268
    const-string v0, "notification_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "notification_volume"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 271
    const-string v0, "ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;I)Lcom/mediatek/audioprofile/VolumeSeekBarPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 411
    const-string v1, "AudioProfile/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init volume preference, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",stream = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .line 413
    .local v0, "volumePref":Lcom/mediatek/audioprofile/VolumeSeekBarPreference;
    invoke-virtual {v0, p2}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setStream(I)V

    .line 414
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumeCallback:Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setCallback(Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;)V

    .line 415
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->setProfile(Ljava/lang/String;)V

    .line 417
    return-object v0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePrefWhenSilentOrMeeting(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IAudioProfileExt;->removeRingVolumePreference(Landroid/preference/PreferenceScreen;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mNotify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 319
    return-void
.end method

.method private setPreferenceChangeToDatabase(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isChecked"    # Z
    .param p2, "preferenceType"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "phone_vibrate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const-string v0, "audible_touch_tones"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 495
    :cond_2
    const-string v0, "audible_selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 497
    :cond_3
    const-string v0, "screen_lock_sounds"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 499
    :cond_4
    const-string v0, "haptic_feedback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrateOnTouchEnabled(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setPreferenceListener(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preferenceType"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/preference/Preference;

    .prologue
    .line 479
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/audioprofile/Editprofile$3;-><init>(Lcom/mediatek/audioprofile/Editprofile;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    return-void
.end method

.method private setRingtoneSIMId(J)V
    .locals 1
    .param p1, "simId"    # J

    .prologue
    .line 570
    iget v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    packed-switch v0, :pswitch_data_0

    .line 582
    :goto_0
    return-void

    .line 572
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 573
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 576
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 577
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtoneType(I)V
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    .line 520
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 525
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtongTypeAndStartSIMSelector(I)V
    .locals 5
    .param p1, "keyIndex"    # I

    .prologue
    .line 505
    const-string v2, "AudioProfile/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected ringtone type index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_MULTISIM_RINGTONE_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 508
    .local v0, "numSlots":I
    move v1, v0

    .line 509
    .local v1, "simNum":I
    const-string v2, "AudioProfile/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simList.size() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 512
    iput p1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    .line 513
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneType(I)V

    .line 514
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->startSIMCardSelectorActivity()V

    .line 517
    .end local v0    # "numSlots":I
    .end local v1    # "simNum":I
    :cond_0
    return-void
.end method

.method private startSIMCardSelectorActivity()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.extrasettings.sim.SELECT_SUB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 368
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 369
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 370
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isVibrateOnTouchEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 373
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 558
    const-string v0, "AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-nez p1, :cond_1

    .line 560
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 561
    const-string v0, "subscription"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 563
    iget-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneSIMId(J)V

    .line 565
    :cond_0
    const-string v0, "AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select SIM id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 546
    const-string v0, "AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 549
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 550
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 553
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    .line 160
    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->addPreferencesFromResource(I)V

    .line 161
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 162
    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/extrasettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceCapable:Z

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/SettingsActivity;

    .line 165
    .local v1, "parentActivity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "AudioProfile/EditProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",bundle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "profileKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 171
    const-string v3, "audioprofile"

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 172
    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 174
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 175
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    .line 176
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSIMSelectorTitle:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initPreference()V

    .line 179
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 220
    const-string v0, "AudioProfile/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 229
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 468
    const-string v0, "AudioProfile/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    .line 475
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 471
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_call_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 381
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    .line 382
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$2;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$2;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 403
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 199
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 208
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 210
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 235
    return-void
.end method
