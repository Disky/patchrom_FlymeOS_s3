.class Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 290
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , setPreferred false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 292
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/extrasettings/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 294
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    # invokes: Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v1, v0, v2}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 297
    :cond_0
    return-void
.end method
