.class Lcom/android/extrasettings/location/LocationSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/extrasettings/location/LocationSettings$3;->this$0:Lcom/android/extrasettings/location/LocationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    const-string v0, "LocationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received settings change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings$3;->this$0:Lcom/android/extrasettings/location/LocationSettings;

    # getter for: Lcom/android/extrasettings/location/LocationSettings;->injector:Lcom/android/extrasettings/location/SettingsInjector;
    invoke-static {v0}, Lcom/android/extrasettings/location/LocationSettings;->access$000(Lcom/android/extrasettings/location/LocationSettings;)Lcom/android/extrasettings/location/SettingsInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 252
    return-void
.end method
