.class public final Lcom/mediatek/settings/hotknot/HotKnotEnabler;
.super Ljava/lang/Object;
.source "HotKnotEnabler.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/extrasettings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 29
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotEnabler;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 45
    invoke-virtual {p2}, Lcom/android/extrasettings/widget/SwitchBar;->getSwitch()Lcom/android/extrasettings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    .line 48
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setupSwitchBar()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 106
    const-string v0, "HotKnotEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, v2}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 109
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 110
    const-string v0, "HotKnotEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :pswitch_1
    iput-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 114
    const-string v0, "HotKnotEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, v3}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->setSwitchChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 117
    iput-boolean v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    .line 118
    const-string v0, "HotKnotEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 91
    const-string v0, "HotKnotEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUpdateStatusOnly is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_0

    .line 93
    if-eqz p2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->enable()Z

    .line 99
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 100
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->handleStateChanged(I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iput-boolean v1, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mValidListener:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 72
    goto :goto_1
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 59
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 64
    return-void
.end method
