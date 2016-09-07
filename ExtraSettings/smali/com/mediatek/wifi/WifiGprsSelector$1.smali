.class Lcom/mediatek/wifi/WifiGprsSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    const-string v4, "subscription"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 160
    .local v2, "subId":J
    const-string v4, "WifiGprsSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changed default data subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget-object v4, v4, Lcom/mediatek/wifi/WifiGprsSelector;->mTimeHandler:Landroid/os/Handler;

    const/16 v6, 0x7d1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const/16 v6, 0x3e9

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->removeDialog(I)V
    invoke-static {v4, v6}, Lcom/mediatek/wifi/WifiGprsSelector;->access$000(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 165
    :cond_0
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z
    invoke-static {v4, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->access$102(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 166
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V
    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->access$200(Lcom/mediatek/wifi/WifiGprsSelector;)V

    .line 192
    .end local v2    # "subId":J
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z
    invoke-static {v6, v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$302(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 169
    const-string v6, "WifiGprsSelector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AIRPLANE_MODE state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z
    invoke-static {v8}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;
    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->access$400(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 171
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V
    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->access$200(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 170
    goto :goto_1

    .line 172
    :cond_4
    const-string v6, "com.android.mms.transaction.START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    const-string v6, "WifiGprsSelector"

    const-string v7, "ssr: TRANSACTION_START in ApnSettings;"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z
    invoke-static {v6, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->access$502(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 175
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;
    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->access$400(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z
    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$500(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_2

    .line 176
    :cond_6
    const-string v6, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 177
    const-string v6, "WifiGprsSelector"

    const-string v7, "ssr: TRANSACTION_STOP in ApnSettings;"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z
    invoke-static {v6, v4}, Lcom/mediatek/wifi/WifiGprsSelector;->access$502(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 179
    iget-object v6, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mApnList:Landroid/preference/PreferenceCategory;
    invoke-static {v6}, Lcom/mediatek/wifi/WifiGprsSelector;->access$400(Lcom/mediatek/wifi/WifiGprsSelector;)Landroid/preference/PreferenceCategory;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mScreenEnable:Z
    invoke-static {v7}, Lcom/mediatek/wifi/WifiGprsSelector;->access$500(Lcom/mediatek/wifi/WifiGprsSelector;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_3

    .line 180
    :cond_8
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 181
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->handleWifiStateChanged(I)V
    invoke-static {v4, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->access$600(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    goto/16 :goto_0

    .line 183
    :cond_9
    const-string v4, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const-string v4, "WifiGprsSelector"

    const-string v5, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_1

    .line 188
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget-object v5, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->getSubId()I
    invoke-static {v5}, Lcom/mediatek/wifi/WifiGprsSelector;->access$800(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v5

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mSubId:I
    invoke-static {v4, v5}, Lcom/mediatek/wifi/WifiGprsSelector;->access$702(Lcom/mediatek/wifi/WifiGprsSelector;I)I

    .line 189
    iget-object v4, p0, Lcom/mediatek/wifi/WifiGprsSelector$1;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V
    invoke-static {v4}, Lcom/mediatek/wifi/WifiGprsSelector;->access$200(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto/16 :goto_0
.end method
