.class public Lcom/mediatek/settings/sim/RadioPowerManager;
.super Ljava/lang/Object;
.source "RadioPowerManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    .line 37
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 40
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/RadioPowerManager;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/sim/RadioPowerManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/RadioPowerManager;->isChanged(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/sim/RadioPowerManager;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/sim/RadioPowerManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/RadioPowerManager;->updateRadioMsimDb(ZI)V

    return-void
.end method

.method private isChanged(IZ)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "isChanged":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 69
    .local v4, "slotId":I
    const-string v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v5

    .line 71
    .local v5, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    .line 75
    :try_start_0
    invoke-interface {v5, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 85
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-eq v6, p2, :cond_0

    .line 87
    const/4 v2, 0x1

    .line 91
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    const-string v6, "RadioPowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRadioSwitchComplete("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v2

    .line 77
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v6, "RadioPowerManager"

    const-string v7, "mTelephonyEx is null, returen false"

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "RadioPowerManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServiceState() error, subId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateRadioMsimDb(ZI)V
    .locals 9
    .param p1, "isChecked"    # Z
    .param p2, "subId"    # I

    .prologue
    const/4 v8, -0x1

    .line 107
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-string v5, "RadioPowerManager"

    const-string v6, "updateRadioMsimDb, subId id is invalid"

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "msim_mode_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 113
    .local v3, "priviousSimMode":I
    const-string v5, "RadioPowerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRadioMsimDb, The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", with subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "isRadioOn":Z
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 118
    .local v4, "slot":I
    const/4 v5, 0x1

    shl-int v2, v5, v4

    .line 119
    .local v2, "modeSlot":I
    and-int v5, v3, v2

    if-lez v5, :cond_2

    .line 120
    xor-int/lit8 v5, v2, -0x1

    and-int v0, v3, v5

    .line 121
    .local v0, "currentSimMode":I
    const/4 v1, 0x0

    .line 126
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 130
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v5, v8}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 131
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAllSlotRadioOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 134
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v5, v4}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 135
    const-string v5, "RadioPowerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setToClosedSimSlot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string v5, "RadioPowerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentSimMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isChecked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-ne p1, v1, :cond_3

    .line 141
    iget-object v5, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "msim_mode_setting"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 123
    .end local v0    # "currentSimMode":I
    :cond_2
    or-int v0, v3, v2

    .line 124
    .restart local v0    # "currentSimMode":I
    const/4 v1, 0x1

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "RadioPowerManager"

    const-string v6, "quickly click don\'t allow."

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindPreference(Lcom/mediatek/settings/sim/RadioPowerPreference;I)V
    .locals 1
    .param p1, "preference"    # Lcom/mediatek/settings/sim/RadioPowerPreference;
    .param p2, "subId"    # I

    .prologue
    .line 49
    invoke-static {p2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioOn(Z)V

    .line 50
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioEnabled(Z)V

    .line 51
    new-instance v0, Lcom/mediatek/settings/sim/RadioPowerManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/mediatek/settings/sim/RadioPowerManager$1;-><init>(Lcom/mediatek/settings/sim/RadioPowerManager;ILcom/mediatek/settings/sim/RadioPowerPreference;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setRadioPowerChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    return-void
.end method

.method protected setRadionOn(ZI)V
    .locals 2
    .param p1, "isChecked"    # Z
    .param p2, "subId"    # I

    .prologue
    .line 97
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerManager;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
