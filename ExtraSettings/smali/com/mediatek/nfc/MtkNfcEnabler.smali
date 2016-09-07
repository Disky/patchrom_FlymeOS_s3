.class public Lcom/mediatek/nfc/MtkNfcEnabler;
.super Ljava/lang/Object;
.source "MtkNfcEnabler.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcState:I

.field private mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUpdateSwitchButtonOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;Landroid/nfc/NfcAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/extrasettings/widget/SwitchBar;
    .param p3, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    .line 52
    new-instance v0, Lcom/mediatek/nfc/MtkNfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/MtkNfcEnabler$1;-><init>(Lcom/mediatek/nfc/MtkNfcEnabler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    const-string v0, "MtkNfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkNfcEnabler, switchBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 87
    invoke-virtual {p2}, Lcom/android/extrasettings/widget/SwitchBar;->getSwitch()Lcom/android/extrasettings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    .line 88
    iput-object p3, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/nfc/MtkNfcEnabler;->setupSwitchBar()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/MtkNfcEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;

    .prologue
    .line 35
    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/nfc/MtkNfcEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/nfc/MtkNfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/nfc/MtkNfcEnabler;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;
    .param p1, "x1"    # Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/nfc/MtkNfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/MtkNfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/MtkNfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 174
    const-string v0, "MtkNfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged  newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/MtkNfcEnabler;->updateSwitch(I)V

    .line 177
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 142
    const-string v0, "MtkNfcEnabler"

    const-string v1, "setSwitchChecked()  mUpdateSwitchButtonOnly = true "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mUpdateSwitchButtonOnly:Z

    .line 144
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mUpdateSwitchButtonOnly:Z

    .line 146
    const-string v0, "MtkNfcEnabler"

    const-string v1, "setSwitchChecked()  mUpdateSwitchButtonOnly = false "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    return-void
.end method

.method private updateSwitch(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 188
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 206
    invoke-direct {p0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->setSwitchChecked(Z)V

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->setSwitchChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mediatek/nfc/MtkNfcEnabler;->setSwitchChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 198
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mediatek/nfc/MtkNfcEnabler;->setSwitchChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler;->setSwitchChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v0, "MtkNfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNfcState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mUpdateSwitchButtonOnly:Z

    if-nez v0, :cond_1

    .line 155
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 156
    :cond_0
    const-string v0, "MtkNfcEnabler"

    const-string v1, "onSwitchChanged: enable NFC "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 158
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    if-nez p2, :cond_1

    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    :cond_3
    const-string v0, "MtkNfcEnabler"

    const-string v1, "onSwitchChanged: disable NFC "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 163
    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "MtkNfcEnabler"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->cancel(Z)Z

    .line 129
    const-string v0, "MtkNfcEnabler"

    const-string v1, "mQueryTask.cancel(true)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 110
    const-string v0, "MtkNfcEnabler"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;-><init>(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$1;)V

    iput-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    .line 113
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mQueryTask:Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    :cond_0
    iget v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mNfcState:I

    invoke-direct {p0, v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->handleNfcStateChanged(I)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 99
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 104
    return-void
.end method
