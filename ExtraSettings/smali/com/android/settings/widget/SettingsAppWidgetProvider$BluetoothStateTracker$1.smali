.class Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->this$0:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 474
    # getter for: Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method
