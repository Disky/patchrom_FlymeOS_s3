.class public Lcom/android/extrasettings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/extrasettings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Lcom/android/extrasettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiEnabler$1;-><init>(Lcom/android/extrasettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/extrasettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/wifi/WifiEnabler$2;-><init>(Lcom/android/extrasettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 100
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiEnabler;->setupSwitchBar()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/wifi/WifiEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/extrasettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/wifi/WifiEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 207
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChanged, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 171
    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 173
    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 175
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 160
    invoke-direct {p0, v4}, Lcom/android/extrasettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 168
    invoke-direct {p0, v3}, Lcom/android/extrasettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 187
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchChecked, checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 189
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 191
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 182
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 211
    const-string v1, "WifiEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/extrasettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090369

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/extrasettings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 226
    .local v0, "wifiApState":I
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 231
    :cond_4
    const-string v1, "WifiEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, setWifiEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090368

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 149
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "WifiEnabler.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->Start(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 138
    :cond_0
    const-string v0, "WifiEnabler.initSwitchState"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->Start(Ljava/lang/String;)V

    .line 139
    const-string v0, "WifiEnabler.initSwitchState"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->End(Ljava/lang/String;)V

    .line 140
    const-string v0, "WifiEnabler.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->End(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setupSwitchBar()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 112
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/extrasettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 113
    iget-boolean v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 118
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 126
    return-void
.end method
