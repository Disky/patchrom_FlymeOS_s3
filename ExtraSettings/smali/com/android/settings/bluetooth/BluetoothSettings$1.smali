.class Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    iget-object v5, v5, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 123
    .local v1, "state":I
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->updateDeviceName(Landroid/content/Context;)V

    .line 127
    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    # setter for: Lcom/android/extrasettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z
    invoke-static {v2, v3}, Lcom/android/extrasettings/bluetooth/BluetoothSettings;->access$002(Lcom/android/extrasettings/bluetooth/BluetoothSettings;Z)Z

    .line 130
    :cond_1
    return-void
.end method
