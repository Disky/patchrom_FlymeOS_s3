.class public Lcom/android/extrasettings/SecuritySettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/extrasettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDataProectExt:Lcom/mediatek/settings/ext/IDataProtectionExt;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMdmPermCtrlExt:Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mPplExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

.field private mQuickUnlock:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScrollToUnknownSources:Z

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUnknownSourcesPosition:I

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/extrasettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 129
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "quick_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/extrasettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 846
    new-instance v0, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/extrasettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/extrasettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/extrasettings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/SecuritySettings$1;-><init>(Lcom/android/extrasettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    .line 849
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/SecuritySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/SecuritySettings;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/android/extrasettings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/android/extrasettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/mediatek/settings/ext/IPermissionControlExt;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/settings/ext/IPermissionControlExt;)Lcom/mediatek/settings/ext/IPermissionControlExt;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ext/IPermissionControlExt;

    .prologue
    .line 88
    sput-object p0, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    return-object p0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 34

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 257
    .local v21, "root":Landroid/preference/PreferenceScreen;
    if-eqz v21, :cond_0

    .line 258
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 260
    :cond_0
    const v29, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/extrasettings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v20

    .line 265
    .local v20, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    if-nez v29, :cond_4

    const/16 v29, 0x1

    :goto_0
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/SecuritySettings;->mIsPrimary:Z

    .line 270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v29, v0

    if-nez v29, :cond_1

    .line 272
    const-string v29, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 273
    .local v18, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v18, :cond_1

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 275
    const v29, 0x7f09028e

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 282
    .end local v18    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    sget-boolean v29, Lcom/mediatek/settings/FeatureOption;->MTK_EMMC_SUPPORT:Z

    if-eqz v29, :cond_6

    sget-boolean v29, Lcom/mediatek/settings/FeatureOption;->MTK_CACHE_MERGE_SUPPORT:Z

    if-nez v29, :cond_6

    const/4 v15, 0x1

    .line 283
    .local v15, "isEMMC":Z
    :goto_2
    const-string v29, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 284
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v16

    .line 285
    .local v16, "isLowRAM":Z
    if-eqz v15, :cond_2

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 286
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 288
    const v29, 0x7f060039

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 296
    :cond_2
    :goto_3
    const-string v29, "security_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 298
    .local v22, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v22, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    .line 300
    .local v12, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/extrasettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v5

    .line 302
    .local v5, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v13, v0, :cond_8

    .line 303
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 304
    .local v4, "agent":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v27, Landroid/preference/Preference;

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 306
    .local v27, "trustAgentPreference":Landroid/preference/Preference;
    const-string v29, "trust_agent"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 307
    iget-object v0, v4, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, v4, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, v4, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 312
    const-string v29, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 315
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    if-nez v12, :cond_3

    .line 317
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    const v29, 0x7f0902e5

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 302
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 268
    .end local v4    # "agent":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v5    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v12    # "hasSecurity":Z
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "isEMMC":Z
    .end local v16    # "isLowRAM":Z
    .end local v22    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v27    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 277
    .restart local v18    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_5
    const v29, 0x7f09028c

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 282
    .end local v18    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 291
    .restart local v6    # "am":Landroid/app/ActivityManager;
    .restart local v15    # "isEMMC":Z
    .restart local v16    # "isLowRAM":Z
    :cond_7
    const v29, 0x7f060041

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 324
    .restart local v22    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_8
    const-string v29, "lock_after_timeout"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/ListPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->setupLockAfterPreference()V

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 331
    :cond_9
    const-string v29, "biometric_weak_liveliness"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    .line 335
    const-string v29, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 338
    const-string v29, "power_button_instantly_locks"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 340
    const-string v29, "trust_agent"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 341
    .restart local v27    # "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    if-eqz v27, :cond_a

    invoke-virtual/range {v27 .. v27}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v29

    if-lez v29, :cond_a

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    const v30, 0x7f090576

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    :cond_a
    const-string v29, "quick_unlock"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mQuickUnlock:Landroid/preference/SwitchPreference;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mQuickUnlock:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_b

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mQuickUnlock:Landroid/preference/SwitchPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v31, "keyguard_quick_unlock"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    const/16 v29, 0x1

    :goto_5
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mQuickUnlock:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    :cond_b
    const v29, 0x7f060037

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    const v29, 0x7f060042

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v29

    const/high16 v30, 0x10000

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    .line 362
    if-eqz v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    .line 363
    const-string v29, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_d
    const-string v29, "0"

    const-string v30, "qemu.hw.mainkeys"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 375
    const v29, 0x7f06003b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 382
    :goto_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    .line 383
    .local v26, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->isSimIccReady()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/extrasettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 384
    :cond_e
    const-string v29, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :goto_7
    const-string v29, "0"

    const-string v30, "qemu.hw.mainkeys"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "lock_to_app_enabled"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    if-eqz v29, :cond_f

    .line 400
    const-string v29, "screen_pinning_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f090a4a

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    :cond_f
    const-string v29, "show_password"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 407
    const-string v29, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "user"

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/UserManager;

    .line 411
    .local v28, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 412
    const-string v29, "no_config_credentials"

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_18

    .line 413
    const-string v29, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 415
    .local v8, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v29

    if-eqz v29, :cond_17

    const v23, 0x7f0907db

    .line 418
    .local v23, "storageSummaryRes":I
    :goto_8
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 420
    const-string v29, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 430
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    .end local v23    # "storageSummaryRes":I
    :goto_9
    const-string v29, "device_admin_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 432
    .local v11, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v29, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v29

    if-nez v29, :cond_19

    const/16 v29, 0x1

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 438
    const-string v29, "no_install_unknown_sources"

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_10

    const-string v29, "no_install_apps"

    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 440
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 444
    :cond_11
    const-string v29, "advanced_security"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 446
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_12

    .line 447
    const-string v29, "manage_trust_agents"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 448
    .local v17, "manageAgents":Landroid/preference/Preference;
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v29

    if-nez v29, :cond_12

    .line 449
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    const v29, 0x7f0902e5

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 457
    .end local v17    # "manageAgents":Landroid/preference/Preference;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/extrasettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/search/Index;

    move-result-object v29

    const-class v30, Lcom/android/extrasettings/SecuritySettings;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    const/16 v32, 0x1

    invoke-virtual/range {v29 .. v32}, Lcom/android/extrasettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 460
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b
    sget-object v29, Lcom/android/extrasettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v13, v0, :cond_1a

    .line 461
    sget-object v29, Lcom/android/extrasettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v29, v29, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 462
    .local v19, "pref":Landroid/preference/Preference;
    if-eqz v19, :cond_13

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 460
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 352
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v11    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v13    # "i":I
    .end local v19    # "pref":Landroid/preference/Preference;
    .end local v26    # "tm":Landroid/telephony/TelephonyManager;
    .end local v28    # "um":Landroid/os/UserManager;
    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 377
    :cond_15
    const v29, 0x7f06003c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_6

    .line 387
    .restart local v26    # "tm":Landroid/telephony/TelephonyManager;
    :cond_16
    const-string v29, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->isSimReady()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 415
    .restart local v8    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v28    # "um":Landroid/os/UserManager;
    :cond_17
    const v23, 0x7f0907dc

    goto/16 :goto_8

    .line 422
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    :cond_18
    const-string v29, "credentials_management"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 424
    .local v9, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v29, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 425
    const-string v29, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    const-string v29, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 437
    .end local v9    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v11    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_19
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 466
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v13    # "i":I
    :cond_1a
    sget-object v29, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lcom/mediatek/settings/ext/IPermissionControlExt;->addAutoBootPrf(Landroid/preference/PreferenceGroup;)V

    .line 467
    sget-object v29, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lcom/mediatek/settings/ext/IPermissionControlExt;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 468
    sget-object v29, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    invoke-interface/range {v29 .. v29}, Lcom/mediatek/settings/ext/IPermissionControlExt;->enablerResume()V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mDataProectExt:Lcom/mediatek/settings/ext/IDataProtectionExt;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lcom/mediatek/settings/ext/IDataProtectionExt;->addDataPrf(Landroid/preference/PreferenceGroup;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mPplExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->addPplPrf(Landroid/preference/PreferenceGroup;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mPplExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->enablerResume()V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mMdmPermCtrlExt:Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v11}, Lcom/mediatek/settings/ext/IMdmPermissionControlExt;->addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/SecuritySettings;->mMdmPermCtrlExt:Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/mediatek/settings/ext/IMdmPermissionControlExt;->enablerResume()V

    .line 477
    const-string v29, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 478
    .local v7, "credentialInstall":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/mediatek/settings/UtilsExt;->getVolumeDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 479
    .local v10, "description":Ljava/lang/String;
    const v29, 0x7f0907d3

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v10, v1}, Lcom/mediatek/settings/UtilsExt;->getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 480
    .local v25, "title":Ljava/lang/String;
    const v29, 0x7f0907d4

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v10, v1}, Lcom/mediatek/settings/UtilsExt;->getVolumeString(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 481
    .local v24, "summary":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 484
    return-object v21
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 635
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 636
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 637
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 640
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 641
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 642
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 647
    :cond_2
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 649
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 651
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 652
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 653
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 660
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 661
    return-void

    .line 660
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1036
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1062
    .end local p2    # "root":Landroid/preference/PreferenceGroup;
    :goto_0
    return-object p2

    .line 1040
    .restart local p2    # "root":Landroid/preference/PreferenceGroup;
    :cond_0
    iget v6, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 1042
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 1043
    .local v4, "preferenceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 1044
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 1045
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p2, v3

    .line 1047
    goto :goto_0

    .line 1050
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    move-object v1, v3

    .line 1051
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1052
    .local v1, "group":Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p1, v1}, Lcom/android/extrasettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    .line 1053
    .local v5, "returnedPreference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    move-object p2, v5

    .line 1054
    goto :goto_0

    .line 1058
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v5    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    iget v6, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 1043
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1062
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/android/extrasettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 529
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 530
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 531
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 532
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 533
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    invoke-static {v2, p0}, Lcom/android/extrasettings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 535
    invoke-static {p0, v2}, Lcom/android/extrasettings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 537
    .local v5, "trustAgentComponentInfo":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/extrasettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 541
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/android/extrasettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 217
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 220
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    const v1, 0x7f06003a

    .line 246
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 218
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f060038

    goto :goto_1

    .line 225
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    const v1, 0x7f060037

    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    const v1, 0x7f060042

    goto :goto_1

    .line 231
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 233
    :sswitch_0
    const v1, 0x7f06003e

    .line 234
    goto :goto_1

    .line 237
    :sswitch_1
    const v1, 0x7f060040

    .line 238
    goto :goto_1

    .line 242
    :sswitch_2
    const v1, 0x7f06003d

    goto :goto_1

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 490
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 491
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/extrasettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 494
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 496
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x1

    .line 502
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "simState":I
    iget-object v5, p0, Lcom/android/extrasettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 512
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 513
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 514
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 515
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 521
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 555
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 597
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 598
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 599
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 600
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 602
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 606
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/extrasettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 608
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 599
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 614
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 615
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 616
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 617
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 618
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 619
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 620
    move v0, v4

    .line 617
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 624
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 625
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 626
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090284

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/extrasettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    :goto_1
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 632
    return-void

    .line 629
    :cond_2
    iget-object v9, p0, Lcom/android/extrasettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090283

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/extrasettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 565
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090586

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 572
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 834
    const v0, 0x7f090ae2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 750
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 751
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 757
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 758
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 763
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 764
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 766
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 770
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 577
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 578
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/extrasettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 583
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 188
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 190
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 192
    new-instance v1, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/extrasettings/ChooseLockSettingsHelper;

    .line 194
    if-eqz p1, :cond_0

    const-string v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "trust_agent_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/UtilsExt;->getPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-result-object v1

    sput-object v1, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    .line 206
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/UtilsExt;->getPrivacyProtectionLockExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mPplExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    .line 207
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/UtilsExt;->getMdmPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mMdmPermCtrlExt:Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    .line 208
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/UtilsExt;->getDataProectExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataProtectionExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mDataProectExt:Lcom/mediatek/settings/ext/IDataProtectionExt;

    .line 209
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 587
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 588
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 591
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1028
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 1029
    sget-object v0, Lcom/android/extrasettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IPermissionControlExt;->enablerPause()V

    .line 1030
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mPplExt:Lcom/mediatek/settings/ext/IPplSettingsEntryExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;->enablerPause()V

    .line 1031
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mMdmPermCtrlExt:Lcom/mediatek/settings/ext/IMdmPermissionControlExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IMdmPermissionControlExt;->enablerPause()V

    .line 1032
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 775
    const/4 v4, 0x1

    .line 776
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 778
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v8, "lock_after_timeout"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 779
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 781
    .local v5, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 829
    .end local v5    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 783
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "SecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 787
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v8, "lockenabled"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 788
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 789
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v8, "visiblepattern"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 790
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 791
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "biometric_weak_liveliness"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 792
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 793
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 798
    :cond_4
    iget-object v8, p0, Lcom/android/extrasettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 799
    new-instance v1, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, p0}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 801
    .local v1, "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    const/16 v6, 0x7d

    invoke-virtual {v1, v6, v9, v9}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 807
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 808
    iget-object v6, p0, Lcom/android/extrasettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 811
    .end local v1    # "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v8, "power_button_instantly_locks"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 812
    iget-object v6, p0, Lcom/android/extrasettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_1

    .line 813
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v8, "quick_unlock"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 814
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "keyguard_quick_unlock"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    move v6, v7

    goto :goto_2

    .line 816
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v8, "show_password"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 817
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v6, v7

    goto :goto_3

    .line 819
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string v6, "toggle_install_applications"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 821
    iget-object v6, p0, Lcom/android/extrasettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 822
    invoke-direct {p0}, Lcom/android/extrasettings/SecuritySettings;->warnAppInstallation()V

    .line 824
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 826
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/extrasettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 713
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 714
    .local v7, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const-string v2, "com.android.extrasettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0902ad

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/extrasettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 742
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 717
    :cond_1
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    new-instance v6, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 720
    .local v6, "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    const/16 v0, 0x7c

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 728
    .end local v6    # "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    :cond_2
    const-string v0, "trust_agent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    new-instance v6, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 731
    .restart local v6    # "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 732
    const/16 v0, 0x7e

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 736
    iput-object v5, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 740
    .end local v6    # "helper":Lcom/android/extrasettings/ChooseLockSettingsHelper;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 673
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 677
    invoke-direct {p0}, Lcom/android/extrasettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 680
    iget-boolean v1, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollToUnknownSources:Z

    if-eqz v1, :cond_0

    .line 681
    iput-boolean v3, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 683
    iput v3, p0, Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 684
    const-string v1, "toggle_install_applications"

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/extrasettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    .line 685
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/extrasettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 690
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 697
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 698
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 701
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    .line 702
    iget-object v4, p0, Lcom/android/extrasettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 707
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/extrasettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 709
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 702
    goto :goto_0

    :cond_7
    move v2, v3

    .line 707
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 665
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 666
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    :cond_0
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 838
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 839
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 841
    return-void
.end method
