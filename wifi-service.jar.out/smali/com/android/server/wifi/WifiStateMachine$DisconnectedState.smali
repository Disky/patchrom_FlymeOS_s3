.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mFrameworkScanStopDelayMs:J

.field private mFrameworkScanStopSupport:Z

.field private mStopScanAlarmEnabled:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9744
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 9748
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 9749
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    return-void
.end method

.method private setStopScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 9752
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 9765
    :cond_0
    :goto_0
    return-void

    .line 9753
    :cond_1
    if-eqz p1, :cond_2

    .line 9754
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 9755
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStopScanAlarm, mFrameworkScanStopDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9756
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mStopScanIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    goto :goto_0

    .line 9761
    :cond_2
    const-string v0, "WifiStateMachine"

    const-string v1, "Cancel setStopScanAlarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9762
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mStopScanIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9763
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9770
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9773
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9774
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 9863
    :cond_1
    :goto_0
    return-void

    .line 9778
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9784
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9785
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_framework_scan_interval_ms"

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    int-to-long v0, v0

    :goto_1
    invoke-static {v3, v4, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$29502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9797
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$13200()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9798
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enter disconnected State scan interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEnableBackgroundScan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFrameworkScanIntervalMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9805
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9806
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9810
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    invoke-static {v0, v1, v8, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 9835
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 9836
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30704(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9840
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9843
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 9845
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    .line 9847
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrameworkScanStopSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrameworkScanStopDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9849
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 9850
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 9852
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 9853
    const-string v0, "WifiStateMachine"

    const-string v1, "Start timer setStopScanAlarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9854
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 9856
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$30902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9857
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIpConfigLost:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9858
    const-string v0, "WifiStateMachine"

    const-string v1, "IpConfigLost, reconnect!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9859
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIpConfigLost:Z
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$7902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9860
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    goto/16 :goto_0

    .line 9785
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_1

    .line 9791
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_framework_scan_interval_ms"

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29502(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_2

    .line 9815
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9822
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9823
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto/16 :goto_3

    .line 9826
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_3
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10087
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 10089
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10090
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10091
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 10092
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    const v12, 0x20058

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 9866
    const/4 v8, 0x1

    .line 9868
    .local v8, "ret":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v1, p1, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9870
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 10078
    const/4 v8, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    move v2, v8

    .line 10080
    :goto_1
    return v2

    .line 9872
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9873
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9876
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 9880
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9881
    const-string v0, "WifiStateMachine"

    const-string v1, "No periodic scan because stop scan timeout."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9882
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    goto :goto_0

    .line 9884
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v13, v13, v4, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 9885
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30704(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v2, v12, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 9895
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30704(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v2, v12, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9897
    const/4 v8, 0x0

    .line 9898
    goto/16 :goto_0

    .line 9900
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_2

    .line 9901
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9903
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 9905
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9908
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5000(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9909
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9915
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 9911
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 9922
    :sswitch_4
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/wifi/StateChangeResult;

    .line 9923
    .local v9, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9924
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUPPLICANT_STATE_CHANGE_EVENT state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " debouncing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9928
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, v9, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$13800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 9930
    const/4 v8, 0x0

    .line 9931
    goto/16 :goto_0

    .line 9933
    .end local v9    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9935
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$24900()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 9939
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9940
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 9942
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_9

    .line 9945
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    .line 9946
    .local v3, "period":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9947
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_interval_p2p_connected_ms"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    int-to-long v12, v5

    invoke-static {v0, v1, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v3, v0

    .line 9951
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg2:I

    move-object v5, v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 9953
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$24600()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9954
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiStateMachine Disconnected CMD_START_SCAN source "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> obsolete"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9960
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$15000(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    .line 9961
    const/4 v8, 0x1

    .line 9962
    goto/16 :goto_0

    .line 9963
    .end local v3    # "period":I
    :cond_9
    const/4 v8, 0x0

    .line 9965
    goto/16 :goto_0

    .line 9968
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9969
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 9972
    :cond_a
    const/4 v8, 0x0

    .line 9973
    goto/16 :goto_0

    .line 9975
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 9976
    .local v7, "info":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9977
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9978
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 9980
    .local v6, "defaultInterval":I
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v4, v6

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 9983
    .local v10, "scanIntervalMs":J
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    long-to-int v1, v10

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 9997
    .end local v6    # "defaultInterval":I
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v10    # "scanIntervalMs":J
    :goto_3
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10003
    const/4 v8, 0x0

    .line 10005
    goto/16 :goto_0

    .line 9984
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 9985
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Turn on scanning after p2p disconnected"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9986
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$30704(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v2, v12, v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 9993
    :cond_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    invoke-static {v0, v1, v4, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$28500(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_3

    .line 10007
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_e

    move v0, v2

    :cond_e
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    goto/16 :goto_0

    .line 10012
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 10013
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworksDisabledDuringConnect:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mConnectNetwork:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10016
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 10017
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10031
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10032
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWfdConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 10034
    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10019
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v0

    if-nez v0, :cond_f

    .line 10020
    const-string v0, "WifiStateMachine"

    const-string v1, "Disable supplicant auto scan!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10021
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto :goto_4

    .line 10024
    :cond_12
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 10026
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10027
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto :goto_4

    .line 10036
    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10041
    :sswitch_b
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v1, :cond_0

    .line 10042
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 10043
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10044
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10045
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$31400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10046
    const-string v0, "WifiStateMachine"

    const-string v1, "Screen on, transition to mDisconnectedState!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10050
    :sswitch_c
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v1, :cond_0

    .line 10051
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10052
    const-string v0, "WifiStateMachine"

    const-string v1, "Start stop scan alarm!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10053
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    goto/16 :goto_0

    .line 10056
    :sswitch_d
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v1, :cond_0

    .line 10057
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsPeriodicScanTimeout:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10058
    const-string v1, "WifiStateMachine"

    const-string v2, "mIsPeriodicScanTimeout get!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10059
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10060
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 10061
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$27400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10062
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$31500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 10068
    :sswitch_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_14

    .line 10069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 10070
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10071
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 10073
    :cond_14
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 10074
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 9870
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_8
        0x2004b -> :sswitch_8
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_9
        0x200ad -> :sswitch_a
        0x200af -> :sswitch_d
        0x200b0 -> :sswitch_c
        0x200b1 -> :sswitch_b
        0x2300b -> :sswitch_7
        0x2300c -> :sswitch_e
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_6
        0x24006 -> :sswitch_4
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
