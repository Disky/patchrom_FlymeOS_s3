.class public final Lcom/android/extrasettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/extrasettings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 62
    new-instance v1, Lcom/android/extrasettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcom/android/extrasettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 89
    invoke-virtual {p2}, Lcom/android/extrasettings/widget/SwitchBar;->getSwitch()Lcom/android/extrasettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 92
    invoke-static {p1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 93
    .local v0, "manager":Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    .line 96
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 100
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/extrasettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 188
    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 196
    :cond_1
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 203
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    const-string v0, "BluetoothEnabler.handleStateChanged"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->Start(Ljava/lang/String;)V

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-direct {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 179
    invoke-direct {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 181
    :goto_0
    const-string v0, "BluetoothEnabler.handleStateChanged"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->End(Ljava/lang/String;)V

    .line 182
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 149
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 150
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v3}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 156
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 157
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 166
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 170
    invoke-direct {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 172
    iput-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 173
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 209
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/extrasettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090369

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    :cond_0
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateStatusOnly is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 224
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v0, "BluetoothEnabler.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->Start(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 119
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 128
    const-string v0, "BluetoothEnabler.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->End(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 105
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 109
    return-void
.end method
