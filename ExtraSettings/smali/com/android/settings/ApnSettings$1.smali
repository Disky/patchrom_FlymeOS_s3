.class Lcom/android/extrasettings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    # invokes: Lcom/android/extrasettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/extrasettings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 125
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v3, Lcom/android/extrasettings/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 134
    :goto_0
    const-string v3, "apnType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "apnType":Ljava/lang/String;
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver,send MMS status, get type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "mms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v3}, Lcom/android/extrasettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    # getter for: Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v4}, Lcom/android/extrasettings/ApnSettings;->access$400(Lcom/android/extrasettings/ApnSettings;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    # getter for: Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v5}, Lcom/android/extrasettings/ApnSettings;->access$300(Lcom/android/extrasettings/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    iget-object v6, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v6}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 149
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_1
    return-void

    .line 127
    .restart local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    # getter for: Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {}, Lcom/android/extrasettings/ApnSettings;->access$100()Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    # invokes: Lcom/android/extrasettings/ApnSettings;->fillList()V
    invoke-static {v3}, Lcom/android/extrasettings/ApnSettings;->access$200(Lcom/android/extrasettings/ApnSettings;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 141
    .end local v2    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v3}, Lcom/android/extrasettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    # getter for: Lcom/android/extrasettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v4}, Lcom/android/extrasettings/ApnSettings;->access$400(Lcom/android/extrasettings/ApnSettings;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    # getter for: Lcom/android/extrasettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v5}, Lcom/android/extrasettings/ApnSettings;->access$300(Lcom/android/extrasettings/ApnSettings;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    iget-object v6, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v6}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/extrasettings/ApnSettings$1;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v3}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
