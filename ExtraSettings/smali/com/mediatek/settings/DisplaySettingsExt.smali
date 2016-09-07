.class public Lcom/mediatek/settings/DisplaySettingsExt;
.super Ljava/lang/Object;
.source "DisplaySettingsExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mClearMotion:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDisplayDefCategory:Landroid/preference/PreferenceCategory;

.field private mDisplayPerCategory:Landroid/preference/PreferenceCategory;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mHDMISettings:Landroid/preference/Preference;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mIsUpdateFont:Z

.field private mLockScreenStylePref:Landroid/preference/Preference;

.field private mMiraIntent:Landroid/content/Intent;

.field private mMiraVision:Landroid/preference/Preference;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

.field private mRotatePreference:Lcom/android/extrasettings/notification/DropDownPreference;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenTimeoutPreference:Landroid/preference/Preference;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field mWallpaperPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.MIRA_VISION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraIntent:Landroid/content/Intent;

    .line 139
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$1;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$2;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 563
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$3;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "DisplaySettingsExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyle()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/android/extrasettings/notification/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotatePreference:Lcom/android/extrasettings/notification/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/mediatek/hdmi/IMtkHdmiManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DisplaySettingsExt;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 2
    .param p1, "type"    # I
    .param p2, "titleRes"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "screen"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "preference":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 180
    invoke-virtual {p4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    return-object v0

    .line 162
    :pswitch_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 163
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 165
    :pswitch_1
    new-instance v0, Landroid/preference/Preference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v0    # "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 172
    :pswitch_3
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 17
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 192
    const/4 v13, 0x0

    const v14, 0x7f0900fb

    const-string v15, "display_personalize"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    .line 195
    const/4 v13, 0x0

    const v14, 0x7f0900fc

    const-string v15, "display_default"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    .line 199
    const/4 v13, 0x1

    const v14, 0x7f0900fe

    const-string v15, "clearMotion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    const v14, 0x7f0900fd

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_0

    sget-boolean v13, Lcom/mediatek/settings/FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    if-nez v13, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_0
    const/4 v13, 0x1

    const v14, 0x7f090101

    const-string v15, "mira_vision"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    const v14, 0x7f090102

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraIntent:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 213
    :cond_1
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "No MiraVision apk"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_2
    sget-boolean v13, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    if-nez v13, :cond_3

    .line 217
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "No MiraVision lib so"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "tablet"

    const-string v14, "ro.build.characteristics"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 222
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "Only the owner can see MiraVision Settings"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_4
    const/4 v13, 0x1

    const v14, 0x7f090107

    const-string v15, "lock_screen_style"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 230
    const/4 v13, 0x1

    const v14, 0x7f090449

    const-string v15, "mtk_wallpaper"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    const-string v14, "com.android.extrasettings.WallpaperTypeSettings"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 234
    const-string v13, "mtkhdmi"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v13, :cond_5

    .line 237
    const/4 v13, 0x1

    const v14, 0x7f0900e5

    const-string v15, "hdmi_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    const v14, 0x7f0900e6

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    const-string v14, "com.mediatek.hdmi.HDMISettings"

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 242
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v13}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v14, 0x7f0900eb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "hdmi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v14, 0x7f0900ec

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "mhl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v5    # "hdmi":Ljava/lang/String;
    .end local v9    # "mhl":Ljava/lang/String;
    :cond_5
    :goto_0
    const/4 v7, 0x0

    .line 258
    .local v7, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    if-ge v6, v13, :cond_6

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 260
    .local v10, "preference":Landroid/preference/Preference;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    const-string v13, "font_size"

    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    if-eqz v13, :cond_a

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    invoke-virtual {v13, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 250
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v10    # "preference":Landroid/preference/Preference;
    :catch_0
    move-exception v4

    .line 251
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "getDisplayType RemoteException"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v6    # "i":I
    .restart local v7    # "j":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v14, "screen_timeout"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v14, "font_size"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mFontSizePref:Landroid/preference/ListPreference;

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v14, "wallpaper"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v15, "wallpaper"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    :cond_7
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "Plugin called for adding the prefernce"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/mediatek/settings/UtilsExt;->getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-interface {v13, v14, v7}, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;->createCheckBox(Landroid/preference/PreferenceCategory;I)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 284
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const-string v14, "display"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 290
    .local v3, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v11

    .line 291
    .local v11, "status":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v13

    if-nez v13, :cond_8

    .line 292
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "Wifi display feature is unavailable, remove cast screen pref"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v13, "wifi_display"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    .line 295
    .local v12, "wfdPreferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_8

    .line 296
    const-string v13, "mediatek.DisplaySettings"

    const-string v14, "Find the wfd preference"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v13, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    .end local v12    # "wfdPreferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v14, "screensaver"

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    if-eqz v13, :cond_9

    sget-boolean v13, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    if-eqz v13, :cond_9

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v15, "screensaver"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    :cond_9
    return-void

    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v7    # "j":I
    .end local v11    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .restart local v8    # "j":I
    .restart local v10    # "preference":Landroid/preference/Preference;
    :cond_a
    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_2
.end method

.method private queryPluginKeyguardLayers()Z
    .locals 3

    .prologue
    .line 444
    const-class v1, Lcom/mediatek/keyguard/ext/IKeyguardLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IKeyguardLayer;

    .line 446
    .local v0, "ext":Lcom/mediatek/keyguard/ext/IKeyguardLayer;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFontSize(Landroid/preference/ListPreference;)V
    .locals 11
    .param p1, "fontSizePreference"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 504
    const-string v4, "mediatek.DisplaySettings"

    const-string v5, "update font size "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 508
    .local v3, "values":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_small"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 510
    .local v2, "small":F
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_large"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 512
    .local v1, "large":F
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_extralarge"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 514
    .local v0, "extraLarge":F
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size small = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size large = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size extraLarge = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-nez v4, :cond_0

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    .line 519
    :cond_0
    aget-object v4, v3, v8

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_1

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 521
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    aget-object v4, v3, v9

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_2

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 525
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    aget-object v4, v3, v10

    if-eqz v4, :cond_3

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 529
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_3
    if-eqz v3, :cond_4

    .line 533
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 536
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mIsUpdateFont:Z

    .line 538
    :cond_5
    return-void
.end method

.method private updateLockScreenStyle()V
    .locals 7

    .prologue
    .line 412
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v5, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v0, "comName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 416
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 418
    .local v3, "lockScreenStyleApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->queryPluginKeyguardLayers()Z

    move-result v1

    .line 419
    .local v1, "hasPlugin":Z
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasPlugin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 421
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockScreenStyleApps.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyleSummary()V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    const-string v4, "mediatek.DisplaySettings"

    const-string v5, "lock screen style query return null or size 0 "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateLockScreenStyleSummary()V
    .locals 4

    .prologue
    .line 450
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtk_current_keyguard_layer"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/DisplaySettingsExt;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "lockScreenStyleSummary":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "mediatek.DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockScreenStyleSummary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public floatToIndex(Landroid/preference/ListPreference;F)I
    .locals 7
    .param p1, "fontSizePreference"    # Landroid/preference/ListPreference;
    .param p2, "val"    # F

    .prologue
    .line 541
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex enter val = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, -0x1

    .line 543
    .local v2, "res":I
    iget-boolean v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mIsUpdateFont:Z

    if-eqz v4, :cond_2

    .line 544
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 545
    .local v1, "indicesEntry":[Ljava/lang/CharSequence;
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 547
    aget-object v4, v1, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 548
    .local v3, "thisVal":F
    cmpl-float v4, p2, v3

    if-nez v4, :cond_0

    .line 549
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move v2, v0

    .line 546
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v3    # "thisVal":F
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 554
    const/4 v2, 0x1

    .line 558
    .end local v0    # "i":I
    .end local v1    # "indicesEntry":[Ljava/lang/CharSequence;
    :cond_2
    const-string v4, "mediatek.DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floatToIndex, res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v2
.end method

.method public onCreate(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 310
    const-string v0, "mediatek.DisplaySettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 312
    invoke-direct {p0, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->initPreference(Landroid/preference/PreferenceScreen;)V

    .line 313
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyle()V

    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/preference/Preference;)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateFontSize(Landroid/preference/ListPreference;)V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 366
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 390
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mLockScreenStylePref:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "comName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 395
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    .end local v0    # "comName":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 400
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const-class v3, Lcom/mediatek/settings/ClearMotionSettings;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 402
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 321
    const-string v2, "mediatek.DisplaySettings"

    const-string v3, "onResume of DisplaySettings"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mWallpaperPref:Landroid/preference/Preference;

    const-string v3, "current_wallpaper_component_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/DisplaySettingsExt;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    invoke-direct {p0}, Lcom/mediatek/settings/DisplaySettingsExt;->updateLockScreenStyleSummary()V

    .line 346
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 354
    :cond_0
    return-void
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "decodeStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 463
    if-nez p1, :cond_0

    .line 464
    const-string v7, "mediatek.DisplaySettings"

    const-string v8, "parseString error as decodeStr is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v7, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v8, 0x7f0900f6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 497
    :goto_0
    return-object v4

    .line 467
    :cond_0
    move-object v4, p1

    .line 468
    .local v4, "ret":Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "tokens":[Ljava/lang/String;
    array-length v5, v6

    .line 470
    .local v5, "tokenSize":I
    if-le v5, v10, :cond_1

    .line 471
    iget-object v7, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 474
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 482
    .local v3, "resources":Landroid/content/res/Resources;
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 489
    .local v2, "resId":I
    if-ne v5, v8, :cond_2

    .line 490
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 496
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "resId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString return string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString can not find pakcage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "mediatek.DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid format of propery string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "resId":I
    :cond_2
    new-array v7, v10, [Ljava/lang/Object;

    aget-object v8, v6, v8

    aput-object v8, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_0
    return-void
.end method

.method public setRotatePreference(Lcom/android/extrasettings/notification/DropDownPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/extrasettings/notification/DropDownPreference;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotatePreference:Lcom/android/extrasettings/notification/DropDownPreference;

    .line 370
    return-void
.end method
