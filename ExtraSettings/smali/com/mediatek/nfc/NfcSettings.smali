.class public Lcom/mediatek/nfc/NfcSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/nfc/NfcSettings$QueryTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivity:Lcom/android/extrasettings/SettingsActivity;

.field private mAndroidBeam:Landroid/preference/Preference;

.field private mCardEmulationExist:Z

.field private mCardEmulationPref:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcBeamOpen:Z

.field private mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNfcP2pModePref:Landroid/preference/SwitchPreference;

.field private mNfcRwTagPref:Landroid/preference/SwitchPreference;

.field private mNfcState:I

.field private mNfcTapPayPref:Landroid/preference/SwitchPreference;

.field private mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$3;

    invoke-direct {v0}, Lcom/mediatek/nfc/NfcSettings$3;-><init>()V

    sput-object v0, Lcom/mediatek/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    .line 86
    iput v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    .line 87
    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 89
    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/NfcSettings$1;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/NfcSettings$2;-><init>(Lcom/mediatek/nfc/NfcSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/nfc/NfcSettings;)Lcom/mediatek/nfc/NfcSettings$QueryTask;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$QueryTask;)Lcom/mediatek/nfc/NfcSettings$QueryTask;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;
    .param p1, "x1"    # Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/nfc/NfcSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/nfc/NfcSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/nfc/NfcSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/nfc/NfcSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/nfc/NfcSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/nfc/NfcSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/nfc/NfcSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus(I)V

    return-void
.end method

.method private getEmulationOffConstant()V
    .locals 7

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_multise_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "list":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 270
    const-string v4, "Off"

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "[,]"

    .line 273
    .local v0, "delims":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "tokens":[Ljava/lang/String;
    array-length v1, v3

    .line 275
    .local v1, "length":I
    iget-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 276
    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 277
    const-string v4, "NfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NFC_MULTISE_LIST is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", EMULATION_OFF is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    const-string v2, "nfc_p2p_mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    .line 178
    const-string v2, "nfc_android_beam"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    .line 179
    const-string v2, "nfc_rw_tag"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    .line 182
    const-string v2, "nfc_card_emulation"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    .line 183
    const-string v2, "nfc_card_emulation_category"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 185
    .local v0, "cardCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, "cardExist":I
    const-string v2, "NfcSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC_MULTISE_ON is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    iput-boolean v5, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 197
    :goto_0
    const-string v2, "nfc_hce_pay"

    invoke-virtual {p0, v2}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    .line 198
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->getEmulationOffConstant()V

    goto :goto_0
.end method

.method private updatePreferenceEnabledStatus(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const v5, 0x7f090358

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferenceEnabledStatus nfc state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 206
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    const v1, 0x7f090357

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    :goto_1
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 219
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePreferences()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 230
    const-string v3, "NfcSettings"

    const-string v6, "updatePreferences"

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    invoke-direct {p0, v3}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus(I)V

    .line 235
    iget-object v6, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 238
    iget-object v6, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v4}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 240
    iget-boolean v3, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "nfc_multise_active"

    invoke-static {v3, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "activeMode":Ljava/lang/String;
    const-string v3, "NfcSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferences, active mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " EMULATION_OFF is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    const v6, 0x7f090358

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 251
    .end local v0    # "activeMode":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "nfc_hce_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, "hceFlg":I
    if-ne v4, v2, :cond_4

    .line 254
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "nfc_rf_field_active"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, "fieldActive":I
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v1, :cond_5

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 261
    const-string v3, "NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read the value Global.NFC_RF_FIELD_ACTIVE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .end local v1    # "fieldActive":I
    .end local v2    # "hceFlg":I
    :cond_1
    move v3, v5

    .line 235
    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 238
    goto/16 :goto_1

    .line 247
    .restart local v0    # "activeMode":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 256
    .end local v0    # "activeMode":Ljava/lang/String;
    .restart local v2    # "hceFlg":I
    :cond_4
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .restart local v1    # "fieldActive":I
    :cond_5
    move v4, v5

    .line 260
    goto :goto_4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "NfcSettings"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/extrasettings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 159
    new-instance v0, Lcom/mediatek/nfc/MtkNfcEnabler;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/extrasettings/SettingsActivity;

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/nfc/MtkNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/extrasettings/SettingsActivity;

    .line 140
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/extrasettings/SettingsActivity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "NfcSettings"

    const-string v1, "Nfc adapter is null, finish Nfc settings"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 146
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->initPreferences()V

    .line 151
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "NfcSettings"

    const-string v1, "onDestroyView, mSwitchBar removeOnSwitchChangeListener "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->teardownSwitchBar()V

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 327
    const-string v0, "NfcSettings"

    const-string v1, "onPause rm observer "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->cancel(Z)Z

    .line 332
    const-string v0, "NfcSettings"

    const-string v1, "mQueryTask.cancel(true)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->pause()V

    .line 338
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const-string v2, "com.mediatek.nfc.MtkAndroidBeam"

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/nfc/NfcSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 305
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    const-string v1, "NfcSettings"

    const-string v2, "p2p mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v0

    .line 290
    .local v6, "flag":I
    :goto_1
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0

    .end local v6    # "flag":I
    :cond_2
    move v6, v3

    .line 288
    goto :goto_1

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    const-string v1, "NfcSettings"

    const-string v2, "tag rw mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v6, v0

    .line 295
    .restart local v6    # "flag":I
    :goto_2
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0, v6}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0

    .end local v6    # "flag":I
    :cond_4
    move v6, v3

    .line 293
    goto :goto_2

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    const-string v0, "NfcSettings"

    const-string v1, "card emulation mode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v2, "com.mediatek.nfc.CardEmulationSettings"

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/nfc/NfcSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 299
    :cond_6
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    .line 301
    .local v6, "flag":Z
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay tap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_hce_on"

    if-eqz v6, :cond_7

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 310
    const-string v0, "NfcSettings"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->resume()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$QueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 316
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferences()V

    .line 323
    return-void
.end method
