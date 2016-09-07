.class public Lcom/mediatek/audioprofile/SoundEnhancement;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "SoundEnhancement.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final CLOSE_LOSSLESS_NOTIFICATION:Ljava/lang/String; = "android.intent.action.LOSSLESS_NOTIFICATION_CLOSE"

.field private static final GET_BESLOUDNESS_STATUS:Ljava/lang/String; = "GetBesLoudnessStatus"

.field private static final GET_BESLOUDNESS_STATUS_ENABLED:Ljava/lang/String; = "GetBesLoudnessStatus=1"

.field public static final GET_LOSSLESSBT_STATUS:Ljava/lang/String; = "LosslessBT_Status"

.field public static final GET_LOSSLESSBT_STATUS_ENABLED:Ljava/lang/String; = "LosslessBT_Status=1"

.field private static final GET_MUSIC_PLUS_STATUS:Ljava/lang/String; = "GetMusicPlusStatus"

.field private static final GET_MUSIC_PLUS_STATUS_ENABLED:Ljava/lang/String; = "GetMusicPlusStatus=1"

.field private static final KEY_BESLOUDNESS:Ljava/lang/String; = "bes_loudness"

.field private static final KEY_BESSURROUND:Ljava/lang/String; = "bes_surround"

.field private static final KEY_LOSSLESSBT:Ljava/lang/String; = "bes_lossless"

.field private static final KEY_MUSIC_PLUS:Ljava/lang/String; = "music_plus"

.field private static final KEY_SOUND_ENAHCNE:Ljava/lang/String; = "sound_enhance"

.field public static final LOSSLESS_ADD:Ljava/lang/String; = "android.intent.action.LOSSLESS_ADD"

.field public static final LOSSLESS_CLOSE:Ljava/lang/String; = "android.intent.action.LOSSLESS_CLOSE"

.field public static final LOSSLESS_ICON_ID:I = 0x7f020017

.field public static final LOSSLESS_NOT_SUPPORT:Ljava/lang/String; = "android.intent.action.LOSSLESS_NOT_SUPPORT"

.field public static final LOSSLESS_PLAYING:Ljava/lang/String; = "android.intent.action.LOSSLESS_PLAYING"

.field public static final LOSSLESS_STOP:Ljava/lang/String; = "android.intent.action.LOSSLESS_STOP"

.field private static final LOSSLESS_SUPPORT:Z

.field private static final MTK_AUDENH_SUPPORT_State:Ljava/lang/String; = "MTK_AUDENH_SUPPORT"

.field private static final MTK_AUDENH_SUPPORT_off:Ljava/lang/String; = "MTK_AUDENH_SUPPORT=false"

.field private static final MTK_AUDENH_SUPPORT_on:Ljava/lang/String; = "MTK_AUDENH_SUPPORT=true"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "Lossless_notification"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static final SET_BESLOUDNESS_DISABLED:Ljava/lang/String; = "SetBesLoudnessStatus=0"

.field private static final SET_BESLOUDNESS_ENABLED:Ljava/lang/String; = "SetBesLoudnessStatus=1"

.field public static final SET_LOSSLESSBT_DISABLED:Ljava/lang/String; = "LosslessBT_Status=0"

.field public static final SET_LOSSLESSBT_ENABLED:Ljava/lang/String; = "LosslessBT_Status=1"

.field public static final SET_LOSSLESSBT_USERID:Ljava/lang/String; = "LosslessBT_UserId="

.field private static final SET_MUSIC_PLUS_DISABLED:Ljava/lang/String; = "SetMusicPlusStatus=0"

.field private static final SET_MUSIC_PLUS_ENABLED:Ljava/lang/String; = "SetMusicPlusStatus=1"

.field private static final SOUND_PREFERENCE_NULL_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoundEnhancement"


# instance fields
.field private mAudenhState:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBesLoudnessPref:Landroid/preference/SwitchPreference;

.field private mBesSurroundPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mLosslessBTPref:Landroid/preference/SwitchPreference;

.field private mMusicPlusPrf:Landroid/preference/SwitchPreference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_LOSSLESS_SUPPORT:Z

    sput-boolean v0, Lcom/mediatek/audioprofile/SoundEnhancement;->LOSSLESS_SUPPORT:Z

    .line 323
    new-instance v0, Lcom/mediatek/audioprofile/SoundEnhancement$2;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/SoundEnhancement$2;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/SoundEnhancement;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    .line 116
    iput-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/SoundEnhancement;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SoundEnhancement;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private addToNotification()V
    .locals 3

    .prologue
    .line 314
    const-string v1, "SoundEnhancement"

    const-string v2, "Enable the lossless BT."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LOSSLESS_ADD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "addNotification":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 317
    return-void
.end method

.method private cancelNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "Lossless_notification"

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 321
    return-void
.end method

.method private setLosslessStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v1, "SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about losslessBT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 305
    const-string v1, "LosslessBT_Status=1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const-string v0, "LosslessBT_UserId="

    .line 307
    .local v0, "losslessUserId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LosslessBT userid cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "LosslessBT_UserId="

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 311
    .end local v0    # "losslessUserId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 6

    .prologue
    .line 191
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v4, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "GetMusicPlusStatus"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "state":Ljava/lang/String;
    const-string v3, "SoundEnhancement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get the state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "isChecked":Z
    if-eqz v2, :cond_0

    .line 196
    const-string v3, "GetMusicPlusStatus=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    .line 199
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    .end local v1    # "isChecked":Z
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "GetBesLoudnessStatus"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "state":Ljava/lang/String;
    const-string v3, "SoundEnhancement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get besloudness state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/preference/SwitchPreference;

    const-string v4, "GetBesLoudnessStatus=1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    .end local v2    # "state":Ljava/lang/String;
    :cond_2
    sget-boolean v3, Lcom/mediatek/audioprofile/SoundEnhancement;->LOSSLESS_SUPPORT:Z

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "LosslessBT_Status"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2    # "state":Ljava/lang/String;
    const-string v3, "SoundEnhancement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get losslessBT state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v3, "LosslessBT_Status=1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    .local v0, "checkedStatus":Z
    const-string v3, "SoundEnhancement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update the losslessBT state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    .end local v0    # "checkedStatus":Z
    .end local v2    # "state":Ljava/lang/String;
    :cond_3
    return-void

    .line 196
    .restart local v1    # "isChecked":Z
    .restart local v2    # "state":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const-string v1, "SoundEnhancement"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mContext:Landroid/content/Context;

    .line 143
    const-string v1, "audioprofile"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 144
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mNotificationManager:Landroid/app/NotificationManager;

    .line 145
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    .line 147
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "MTK_AUDENH_SUPPORT"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    .line 148
    const-string v1, "SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudENH state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 150
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 153
    :cond_0
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->addPreferencesFromResource(I)V

    .line 156
    const-string v1, "music_plus"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/preference/SwitchPreference;

    .line 157
    const-string v1, "bes_loudness"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/preference/SwitchPreference;

    .line 158
    const-string v1, "bes_surround"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    .line 159
    const-string v1, "bes_lossless"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    .line 161
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v2, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove audio enhance preference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_1
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-nez v1, :cond_2

    .line 166
    const-string v1, "SoundEnhancement"

    const-string v2, "feature option is off, remove BesLoudness preference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_2
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_BESSURROUND_SUPPORT:Z

    if-nez v1, :cond_3

    .line 170
    const-string v1, "SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove BesSurround preference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_3
    sget-boolean v1, Lcom/mediatek/audioprofile/SoundEnhancement;->LOSSLESS_SUPPORT:Z

    if-nez v1, :cond_4

    .line 174
    const-string v1, "SoundEnhancement"

    const-string v2, "feature option is off, remove BesLosslessPref preference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/mediatek/audioprofile/SoundEnhancement$1;

    invoke-direct {v2, p0}, Lcom/mediatek/audioprofile/SoundEnhancement$1;-><init>(Lcom/mediatek/audioprofile/SoundEnhancement;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOSSLESS_NOTIFICATION_CLOSE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/SoundEnhancement;->setHasOptionsMenu(Z)V

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 235
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 249
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v1, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_0

    move-object v0, p2

    .line 251
    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    .line 252
    .local v8, "enabled":Z
    if-eqz v8, :cond_5

    const-string v7, "SetMusicPlusStatus=1"

    .line 253
    .local v7, "cmdStr":Ljava/lang/String;
    :goto_0
    const-string v0, "SoundEnhancement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about music plus: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 258
    .end local v7    # "cmdStr":Ljava/lang/String;
    .end local v8    # "enabled":Z
    :cond_0
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_1

    move-object v0, p2

    .line 260
    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    .line 261
    .restart local v8    # "enabled":Z
    if-eqz v8, :cond_6

    const-string v7, "SetBesLoudnessStatus=1"

    .line 262
    .restart local v7    # "cmdStr":Ljava/lang/String;
    :goto_1
    const-string v0, "SoundEnhancement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about besloudness: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 267
    .end local v7    # "cmdStr":Ljava/lang/String;
    .end local v8    # "enabled":Z
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    if-nez v0, :cond_7

    .line 268
    const-string v0, "SoundEnhancement"

    const-string v1, " mBesSurroundPref = null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    if-ne v0, p2, :cond_3

    .line 274
    const-string v0, "SoundEnhancement"

    const-string v1, " mBesSurroundPref onPreferenceTreeClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/mediatek/audioprofile/BesSurroundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mContext:Landroid/content/Context;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 280
    :cond_3
    sget-boolean v0, Lcom/mediatek/audioprofile/SoundEnhancement;->LOSSLESS_SUPPORT:Z

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    if-ne v0, p2, :cond_4

    move-object v0, p2

    .line 282
    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    .line 283
    .restart local v8    # "enabled":Z
    if-eqz v8, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    const-string v0, "LosslessBT_Status=1"

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/SoundEnhancement;->setLosslessStatus(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 298
    .end local v8    # "enabled":Z
    :cond_4
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 252
    .restart local v8    # "enabled":Z
    :cond_5
    const-string v7, "SetMusicPlusStatus=0"

    goto/16 :goto_0

    .line 261
    :cond_6
    const-string v7, "SetBesLoudnessStatus=0"

    goto/16 :goto_1

    .line 269
    .end local v8    # "enabled":Z
    :cond_7
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesSurroundPref:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 270
    const-string v0, "SoundEnhancement"

    const-string v1, " mBesSurroundPref.getKey() == null)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 290
    .restart local v8    # "enabled":Z
    :cond_8
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mLosslessBTPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 291
    const v0, 0x7f020017

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/SoundEnhancement;->cancelNotification(I)V

    .line 292
    const-string v0, "LosslessBT_Status=0"

    invoke-direct {p0, v0}, Lcom/mediatek/audioprofile/SoundEnhancement;->setLosslessStatus(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "SoundEnhancement"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 226
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->updatePreferenceHierarchy()V

    .line 227
    return-void
.end method