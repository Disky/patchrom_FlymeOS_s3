.class public Lcom/android/extrasettings/sim/SimSettings;
.super Lcom/android/extrasettings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;
.implements Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneModeOn:Z

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/android/extrasettings/sim/SimSettings$1;

    invoke-direct {v0}, Lcom/android/extrasettings/sim/SimSettings$1;-><init>()V

    sput-object v0, Lcom/android/extrasettings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 131
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 132
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 133
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    .line 136
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    .line 137
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    .line 139
    iput-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 623
    new-instance v0, Lcom/android/extrasettings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/sim/SimSettings$2;-><init>(Lcom/android/extrasettings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/sim/SimSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->handleAirplaneModeBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->handleDataConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/sim/SimSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->isPhoneAccountAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateCallValues()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/sim/SimSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->isSimSwitchAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateSimPref()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/sim/SimSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/extrasettings/sim/SimSettings;->isRadioSwitchComplete(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/extrasettings/sim/SimSettings;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimSettings;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method private bindWithRadioPowerManager(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/telephony/SubscriptionInfo;)V
    .locals 3
    .param p1, "simPreference"    # Lcom/android/extrasettings/sim/SimSettings$SimPreference;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 720
    if-nez p2, :cond_0

    const/4 v1, -0x1

    .line 722
    .local v1, "subId":I
    :goto_0
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/settings/sim/RadioPowerManager;-><init>(Landroid/content/Context;)V

    .line 723
    .local v0, "radioMgr":Lcom/mediatek/settings/sim/RadioPowerManager;
    invoke-virtual {v0, p1, v1}, Lcom/mediatek/settings/sim/RadioPowerManager;->bindPreference(Lcom/mediatek/settings/sim/RadioPowerPreference;I)V

    .line 724
    return-void

    .line 720
    .end local v0    # "radioMgr":Lcom/mediatek/settings/sim/RadioPowerManager;
    .end local v1    # "subId":I
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0
.end method

.method private createPreferences()V
    .locals 7

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 174
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const v5, 0x7f060045

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 176
    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    .line 178
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 179
    .local v1, "numSlots":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 183
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3, v0}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;-><init>(Lcom/android/extrasettings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 184
    .local v2, "simPreference":Lcom/android/extrasettings/sim/SimSettings$SimPreference;
    sub-int v5, v0, v1

    invoke-virtual {v2, v5}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 186
    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/sim/SimSettings;->bindWithRadioPowerManager(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/telephony/SubscriptionInfo;)V

    .line 188
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 189
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    if-eqz v3, :cond_0

    .line 191
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "simPreference":Lcom/android/extrasettings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateActivitesCategory()V

    .line 196
    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 579
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRadioStateForSlotId(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 820
    const-string v2, "SimSettings"

    const-string v3, "getRadioStateForSlotId()... activity is null"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_0
    return v1

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "msim_mode_setting"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 825
    .local v0, "currentSimMode":I
    shl-int v3, v2, p1

    and-int/2addr v3, v0

    if-nez v3, :cond_1

    .line 827
    .local v1, "radiosState":Z
    :goto_1
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soltId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radiosState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "radiosState":Z
    :cond_1
    move v1, v2

    .line 825
    goto :goto_1
.end method

.method private handleAirplaneModeBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 667
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "air plane mode is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateSimSlotValues()V

    .line 669
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateCellularDataValues()V

    .line 670
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->removeItem()V

    .line 671
    return-void
.end method

.method private handleDataConnectionStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 647
    const-string v1, "apnType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "apnTypeList":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->isResumed()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 656
    :cond_0
    return-void
.end method

.method private handleRadioPowerSwitchComplete()V
    .locals 2

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateSimSlotValues()V

    .line 834
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->isResumed()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V

    .line 835
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 674
    const-string v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 676
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 677
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 678
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init()... air plane mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->initIntentFilter()V

    .line 680
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 682
    new-instance v0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    .line 683
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->addPhoneServiceStateListener(Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;)V

    .line 684
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 708
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 709
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.telecom.action.DEFAULT_ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.telecom.action.PHONE_ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method private isCapabilitySwitching()Z
    .locals 5

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, "isSwitching":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 698
    :goto_0
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return v1

    .line 693
    :cond_0
    :try_start_1
    const-string v2, "SimSettings"

    const-string v3, "mTelephonyEx is null, returen false"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isPhoneAccountAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string v0, "android.telecom.action.DEFAULT_ACCOUNT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.telecom.action.PHONE_ACCOUNT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRadioSwitchComplete(I)Z
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 781
    const/4 v2, 0x1

    .line 782
    .local v2, "isComplete":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 783
    .local v4, "slotId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 786
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v5, :cond_1

    .line 787
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimSettings;->mTelephonyEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    invoke-interface {v5, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 796
    :goto_0
    if-eqz v0, :cond_0

    .line 797
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 798
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-direct {p0, p1, v3}, Lcom/android/extrasettings/sim/SimSettings;->isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z

    move-result v2

    .line 801
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadioSwitchComplete("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isComplete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return v2

    .line 789
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v5, "SimSettings"

    const-string v6, "mTelephonyEx is null, returen false"

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 793
    const-string v5, "SimSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServiceState() error, subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    .line 807
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 808
    .local v1, "slotId":I
    invoke-direct {p0, v1}, Lcom/android/extrasettings/sim/SimSettings;->getRadioStateForSlotId(I)Z

    move-result v0

    .line 809
    .local v0, "radiosState":Z
    const-string v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "soltId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", radiosState is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v2

    .line 812
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 815
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSimSwitchAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private removeItem()V
    .locals 8

    .prologue
    .line 862
    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-eqz v7, :cond_3

    .line 863
    const-string v7, "sim_calls"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 864
    .local v4, "sim_call_Pref":Landroid/preference/Preference;
    const-string v7, "sim_sms"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 865
    .local v6, "sim_sms_Pref":Landroid/preference/Preference;
    const-string v7, "sim_cellular_data"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 866
    .local v5, "sim_data_Pref":Landroid/preference/Preference;
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 867
    .local v2, "mPreferenceCategoryActivities":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 868
    .local v3, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    .line 869
    .local v1, "mIsVoiceCapable":Z
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    .line 870
    .local v0, "mIsSmsCapable":Z
    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 871
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 873
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 874
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 875
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 877
    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    .line 878
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 880
    :cond_2
    iget-object v7, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v7, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateDefaultSettingsItem(Landroid/preference/PreferenceGroup;)V

    .line 882
    .end local v0    # "mIsSmsCapable":Z
    .end local v1    # "mIsVoiceCapable":Z
    .end local v2    # "mPreferenceCategoryActivities":Landroid/preference/PreferenceCategory;
    .end local v3    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "sim_call_Pref":Landroid/preference/Preference;
    .end local v5    # "sim_data_Pref":Landroid/preference/Preference;
    .end local v6    # "sim_sms_Pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateCellularDataValues()V

    .line 231
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateCallValues()V

    .line 232
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateSmsValues()V

    .line 233
    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateSimSlotValues()V

    .line 214
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateActivitesCategory()V

    .line 215
    return-void
.end method

.method private updateAvailableSubInfos()V
    .locals 6

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 201
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 203
    .local v1, "numSlots":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 206
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    if-eqz v2, :cond_0

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private updateCallSummaryAndStatus(Landroid/preference/Preference;Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)V
    .locals 7
    .param p1, "simPref"    # Landroid/preference/Preference;
    .param p2, "telecomManager"    # Landroid/telecom/TelecomManager;
    .param p3, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const v6, 0x7f0909ce

    const/4 v3, 0x1

    .line 728
    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 729
    .local v1, "accoutSum":I
    invoke-virtual {p2, p3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 730
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const-string v2, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountSum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PhoneAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    if-lt v1, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 733
    if-le v1, v3, :cond_2

    .line 734
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 744
    :goto_2
    return-void

    .line 732
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 737
    :cond_2
    if-ne v1, v3, :cond_4

    .line 738
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    .line 742
    :cond_4
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateCallValues()V
    .locals 4

    .prologue
    .line 293
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 294
    .local v1, "simPref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 296
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 299
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    const v3, 0x7f09025a

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 307
    invoke-direct {p0, v1, v2, v0}, Lcom/android/extrasettings/sim/SimSettings;->updateCallSummaryAndStatus(Landroid/preference/Preference;Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)V

    .line 310
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    return-void
.end method

.method private updateCellularDataValues()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 259
    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 260
    .local v0, "simPref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/extrasettings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 263
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v3, 0x7f090259

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateCellularDataValues] mSubInfoList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/extrasettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 266
    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_3

    iget-boolean v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->isCapabilitySwitching()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void

    .line 268
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-nez v1, :cond_0

    .line 269
    const v3, 0x7f0909ce

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 272
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateSimPref()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 281
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 282
    .local v0, "simPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->isCapabilitySwitching()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 220
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 221
    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 223
    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 224
    check-cast v1, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->update()V

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-void
.end method

.method private updateSmsSummary(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "simPref"    # Landroid/preference/Preference;

    .prologue
    const v1, 0x7f0909ce

    .line 838
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 839
    .local v0, "defaultSmsSubId":I
    int-to-long v2, v0

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 840
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateDefaultSIMSummary(Landroid/preference/Preference;I)V

    .line 848
    :goto_0
    return-void

    .line 841
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 842
    iget-object v2, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const v1, 0x7f0909cd

    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSmsValues()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 236
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 237
    .local v0, "simPref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/extrasettings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 240
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v3, 0x7f09025b

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSmsValues] mSubInfoList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/extrasettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 243
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 256
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void

    .line 245
    .restart local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-nez v1, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/android/extrasettings/sim/SimSettings;->updateSmsSummary(Landroid/preference/Preference;)V

    goto :goto_0

    .line 254
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 155
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCreate] mSubInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->init()V

    .line 164
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->createPreferences()V

    .line 165
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateAllOptions()V

    .line 167
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/extrasettings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "SimSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 757
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mStateHandler:Lcom/mediatek/settings/sim/PhoneServiceStateHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->removePhoneServiceSateListener()V

    .line 758
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onDestroy()V

    .line 759
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onPause()V

    .line 749
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSubscriptionsChangedListener()V

    .line 750
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->unregisterObserver()V

    .line 751
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 337
    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 338
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/extrasettings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    instance-of v2, p2, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 342
    check-cast v2, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    check-cast p2, Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2, p2}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)V

    .line 354
    :cond_0
    :goto_0
    return v4

    .line 343
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 344
    sget-object v2, Lcom/android/extrasettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_2
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_3

    .line 347
    sget-object v2, Lcom/android/extrasettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_3
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 350
    sget-object v2, Lcom/android/extrasettings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/extrasettings/RestrictedSettingsFragment;->onResume()V

    .line 318
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSubscriptionsChangedListener()V

    .line 320
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onResme] mSubInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->removeItem()V

    .line 326
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateAvailableSubInfos()V

    .line 327
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->updateAllOptions()V

    .line 329
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->registerObserver()V

    .line 330
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimSettings;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/extrasettings/sim/SimSettings;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 332
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    .line 852
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener:onServiceStateChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0, p2, p1}, Lcom/android/extrasettings/sim/SimSettings;->isRadioSwitchComplete(ILandroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimSettings;->handleRadioPowerSwitchComplete()V

    .line 857
    :cond_0
    return-void
.end method
