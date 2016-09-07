.class public Lcom/mediatek/settings/inputmethod/InputMethodExts;
.super Ljava/lang/Object;
.source "InputMethodExts.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOnlyImeSettings:Z

.field private mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

.field private mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceControlIntent:Landroid/content/Intent;

.field private mVoiceUiPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnlyImeSettings"    # Z
    .param p3, "voiceCategory"    # Landroid/preference/PreferenceCategory;
    .param p4, "pointCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    .line 41
    iput-boolean p2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    .line 42
    iput-object p3, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    .line 43
    iput-object p4, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/inputmethod/InputMethodExts;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/InputMethodExts;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/InputMethodExts;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->updatePointerPrimaryValue()V

    return-void
.end method

.method public static isWakeupSupport(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 174
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 175
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "isWakeupSupport get audio service is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    const-string v3, "MTK_VOW_SUPPORT"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 180
    const-string v2, "MTK_VOW_SUPPORT=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private updatePointerPrimaryValue()V
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "change_pointer_primary_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "currentValue":I
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    .end local v0    # "currentValue":I
    :cond_0
    return-void
.end method


# virtual methods
.method public initExtendsItems()V
    .locals 5

    .prologue
    const v4, 0x7f090124

    .line 49
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    .line 50
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    const-string v2, "voice_ui"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->isWakeupSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    :cond_1
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "going to remove voice ui feature "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    .line 58
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "removed done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    :cond_2
    new-instance v1, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    .line 65
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const-string v2, "mouse_primary_button_settings"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f090122

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 67
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 68
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 69
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    const v2, 0x7f0b0060

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 71
    new-instance v0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .local v0, "doubleClickSpeedPrefere":Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;
    const-string v1, "double_click_speed"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setKey(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v4}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setTitle(I)V

    .line 75
    invoke-virtual {v0, v4}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setDialogTitle(I)V

    .line 77
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v1, :cond_5

    .line 78
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    .line 79
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    new-instance v2, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts$1;-><init>(Lcom/mediatek/settings/inputmethod/InputMethodExts;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    :cond_3
    if-eqz v0, :cond_4

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    :cond_4
    :goto_0
    return-void

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    .line 103
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerPrimayKeyPrefe:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_6
    if-eqz v0, :cond_4

    .line 106
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mPointerSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onClickExtendsItems(Ljava/lang/String;)V
    .locals 2
    .param p1, "preferKey"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "voice_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_0
    return-void
.end method

.method public resumeExtendsItems()V
    .locals 4

    .prologue
    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.voicecommand.VOICE_CONTROL_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceControlIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 121
    :cond_0
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "going to remove voice ui feature "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "removed done"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_SMARTBOOK_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/mediatek/settings/inputmethod/InputMethodExts;->updatePointerPrimaryValue()V

    .line 141
    :cond_2
    return-void

    .line 127
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mIsOnlyImeSettings:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_VOICE_UI_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "InputMethodAndLanguageSettings"

    const-string v2, "going to add voice ui feature "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/InputMethodExts;->mVoiceUiPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
