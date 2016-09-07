.class public Lcom/android/extrasettings/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 193
    new-instance v0, Lcom/android/extrasettings/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/sim/SimBootReceiver$1;-><init>(Lcom/android/extrasettings/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/sim/SimBootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/sim/SimBootReceiver;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimBootReceiver;->detectChangeAndNotify()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 190
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 191
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 166
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f02009a

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f08003d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090aea

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090aeb

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 172
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/extrasettings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 181
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 182
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 184
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 15

    .prologue
    .line 76
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v8

    .line 77
    .local v8, "numSlots":I
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "device_provisioned"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_1

    const/4 v2, 0x1

    .line 79
    .local v2, "isInProvisioning":Z
    :goto_0
    const/4 v6, 0x0

    .line 80
    .local v6, "notificationSent":Z
    const/4 v7, 0x0

    .line 81
    .local v7, "numSIMsDetected":I
    const/4 v4, -0x1

    .line 82
    .local v4, "lastSIMSlotDetected":I
    const-string v12, "SimBootReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "detectChangeAndNotify numSlots = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isInProvisioning = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v12, 0x2

    if-lt v8, v12, :cond_0

    if-eqz v2, :cond_2

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 77
    .end local v2    # "isInProvisioning":Z
    .end local v4    # "lastSIMSlotDetected":I
    .end local v6    # "notificationSent":Z
    .end local v7    # "numSIMsDetected":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    .restart local v2    # "isInProvisioning":Z
    .restart local v4    # "lastSIMSlotDetected":I
    .restart local v6    # "notificationSent":Z
    .restart local v7    # "numSIMsDetected":I
    :cond_2
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v10

    .line 94
    .local v10, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_4

    .line 95
    :cond_3
    const-string v12, "SimBootReceiver"

    const-string v13, "do nothing since no cards inserted"

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v8, :cond_9

    .line 100
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 101
    .local v11, "sir":Landroid/telephony/SubscriptionInfo;
    const-string v12, "SimBootReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sir = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sim_slot_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/extrasettings/sim/SimBootReceiver;->getLastSubId(Ljava/lang/String;)I

    move-result v5

    .line 104
    .local v5, "lastSubId":I
    if-eqz v11, :cond_8

    .line 105
    add-int/lit8 v7, v7, 0x1

    .line 106
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 107
    .local v0, "currentSubId":I
    const/4 v12, -0x2

    if-ne v5, v12, :cond_7

    .line 108
    invoke-direct {p0, v3, v0}, Lcom/android/extrasettings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 114
    :cond_5
    :goto_3
    move v4, v1

    .line 115
    const-string v12, "SimBootReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " lastSubId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " currentSubId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " lastSIMSlotDetected = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "currentSubId":I
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .restart local v0    # "currentSubId":I
    :cond_7
    if-eq v5, v0, :cond_5

    .line 110
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/extrasettings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0, v3, v0}, Lcom/android/extrasettings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 112
    const/4 v6, 0x1

    goto :goto_3

    .line 118
    .end local v0    # "currentSubId":I
    :cond_8
    const/4 v12, -0x1

    if-eq v5, v12, :cond_6

    .line 119
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/extrasettings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 120
    const/4 v12, -0x1

    invoke-direct {p0, v3, v12}, Lcom/android/extrasettings/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 121
    const/4 v6, 0x1

    goto :goto_4

    .line 124
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "lastSubId":I
    .end local v11    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_9
    const-string v12, "SimBootReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notificationSent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " numSIMsDetected = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz v6, :cond_0

    .line 127
    iget-object v12, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v9

    .line 128
    .local v9, "plugin":Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-interface {v9}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->isFeatureEnable()Z

    move-result v12

    if-nez v12, :cond_a

    .line 129
    const-string v12, "SimBootReceiver"

    const-string v13, "Not able to show notification, directly return"

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    :cond_a
    const-string v12, "SimBootReceiver"

    const-string v13, "Not adle to show notification, sim change!"

    invoke-static {v12, v13}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getLastSubId(Ljava/lang/String;)I
    .locals 2
    .param p1, "strSlotId"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setLastSubId(Ljava/lang/String;I)V
    .locals 2
    .param p1, "strSlotId"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "SimBootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()... action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 69
    iget-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sim_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/sim/SimBootReceiver;->detectChangeAndNotify()V

    .line 73
    return-void
.end method
