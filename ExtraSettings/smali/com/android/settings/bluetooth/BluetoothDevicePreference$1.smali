.class Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 213
    return-void
.end method
