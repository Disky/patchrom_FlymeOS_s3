.class public Lcom/mediatek/nfc/CardEmulationSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String; = "card_emulation_settings_category"

.field private static final TAG:Ljava/lang/String; = "CardEmulationSettings"


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

.field private final mCardModeListObserver:Landroid/database/ContentObserver;

.field private final mCardSwitchingObserver:Landroid/database/ContentObserver;

.field private final mCardtransactionObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mItemKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/nfc/SecurityItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 80
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/CardEmulationSettings$1;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$2;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    .line 323
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$3;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    .line 331
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$4;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    .line 340
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$5;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/CardEmulationSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    return-void
.end method

.method private addItemPreference()V
    .locals 7

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 224
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 225
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/nfc/SecurityItemPreference;

    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/nfc/SecurityItemPreference;-><init>(Landroid/content/Context;)V

    .line 226
    .local v5, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v5, v2}, Lcom/mediatek/nfc/SecurityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v5, v2}, Lcom/mediatek/nfc/SecurityItemPreference;->setKey(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v5, p0}, Lcom/mediatek/nfc/SecurityItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v5}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v5    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    return-void
.end method

.method private getCardEmulationList()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "list":Ljava/lang/String;
    const-string v0, "[,]"

    .line 243
    .local v0, "delims":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "tokens":[Ljava/lang/String;
    array-length v3, v5

    .line 245
    .local v3, "length":I
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 246
    add-int/lit8 v6, v3, -0x1

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 247
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EMULATION_OFF is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    add-int/lit8 v6, v3, -0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 250
    .local v1, "emulationList":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 251
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    .line 252
    aget-object v6, v5, v2

    aput-object v6, v1, v2

    .line 253
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "emulation list item is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private removeAll()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v0}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->removeAll()V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 160
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method

.method private updatePreferences()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 169
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->removeAll()V

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "nfc_multise_active"

    invoke-static {v7, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "activeMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "nfc_multise_previous"

    invoke-static {v7, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "previousMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "nfc_multise_in_transation"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 174
    .local v6, "transactionStatus":I
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "nfc_multise_in_switching"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 175
    .local v5, "switchingStatus":I
    const-string v7, "CardEmulationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePreferences(),EMULATION_OFF "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", active mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previous mode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v7, "CardEmulationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePreferences, transactionStatus is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " switchingStatus is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 179
    iput-boolean v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 180
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 181
    iput-boolean v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 182
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    .line 183
    const-string v7, "CardEmulationSettings"

    const-string v10, "no available security elment found and the active mode is off"

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f09009d

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 192
    :goto_0
    iget-object v10, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 216
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "nfc_rf_field_active"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, "fieldActive":I
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    if-nez v1, :cond_9

    :goto_3
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 218
    const-string v7, "CardEmulationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read the value Global.NFC_RF_FIELD_ACTIVE : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 186
    .end local v1    # "fieldActive":I
    :cond_0
    if-nez v5, :cond_1

    .line 187
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f09009e

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f09009f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v7, v9

    .line 192
    goto :goto_1

    .line 194
    :cond_3
    iput-boolean v8, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 195
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v7, v8}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 196
    iput-boolean v9, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 197
    if-ne v5, v8, :cond_4

    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v7, v9}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 199
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f0900a0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 201
    :cond_4
    iget-object v10, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez v6, :cond_5

    if-nez v5, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 202
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->addItemPreference()V

    .line 203
    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v7}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->getPreferenceCount()I

    move-result v3

    .line 204
    .local v3, "prefCount":I
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/CardEmulationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 206
    .local v2, "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    if-eqz v2, :cond_6

    .line 207
    invoke-virtual {v2, v8}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    .line 208
    iput-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

    .line 212
    :goto_5
    iget-object v10, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-ne v5, v8, :cond_7

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 213
    iget-object v10, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-nez v6, :cond_8

    if-nez v5, :cond_8

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setEnabled(Z)V

    goto/16 :goto_2

    .end local v2    # "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v3    # "prefCount":I
    :cond_5
    move v7, v9

    .line 201
    goto :goto_4

    .line 210
    .restart local v2    # "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    .restart local v3    # "prefCount":I
    :cond_6
    const-string v7, "CardEmulationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activie mode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", can not find it on screen"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move v7, v9

    .line 212
    goto :goto_6

    :cond_8
    move v7, v9

    .line 213
    goto :goto_7

    .end local v2    # "itemPref":Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v3    # "prefCount":I
    .restart local v1    # "fieldActive":I
    :cond_9
    move v8, v9

    .line 217
    goto/16 :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/CardEmulationSettings;->addPreferencesFromResource(I)V

    .line 100
    const-string v0, "card_emulation_settings_category"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/CardEmulationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/nfc/CardEmulationProgressCategory;

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    .line 101
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 308
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 310
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 311
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v4, :cond_0

    .line 261
    const-string v4, "CardEmulationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange, select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_multise_active"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v4, v2}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 264
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 265
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 266
    .local v1, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v1, v3}, Lcom/mediatek/nfc/SecurityItemPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    :cond_0
    move v2, v3

    .line 270
    :cond_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 275
    if-eqz p2, :cond_0

    instance-of v6, p2, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v6, :cond_0

    .line 276
    const-string v6, "CardEmulationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "activeMode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "prefKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "nfc_multise_active"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v6, v4}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 282
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v6, v5}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 283
    iget-object v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 284
    .local v2, "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    invoke-virtual {v2, v5}, Lcom/mediatek/nfc/SecurityItemPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0    # "activeMode":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Lcom/mediatek/nfc/SecurityItemPreference;
    .end local v3    # "prefKey":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 289
    :cond_1
    return v4
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_transation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_switching"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    .line 304
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 121
    const-string v1, "CardEmulationSettings"

    const-string v2, "onCreate, mSwitchBar addOnSwitchChangeListener "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 124
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 125
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 127
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStop()V

    .line 133
    const-string v0, "CardEmulationSettings"

    const-string v1, "onStop, mSwitchBar removeOnSwitchChangeListener "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 136
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 140
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, desiredState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUpdateStatusOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    if-eqz v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, set  Settings.Global.NFC_MULTISE_ACTIVE  EMULATION_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_previous"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "previousMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    const-string v1, "CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, set active mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
