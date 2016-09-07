.class final Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    .line 208
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 204
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    .line 209
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mTriggerPref:Lcom/android/extrasettings/notification/SettingPref;
    invoke-static {v0}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->access$700(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Lcom/android/extrasettings/notification/SettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    # getter for: Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->access$600(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;

    # invokes: Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;->access$800(Lcom/android/extrasettings/fuelgauge/BatterySaverSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/extrasettings/fuelgauge/BatterySaverSettings$SettingsObserver;->LOW_POWER_MODE_TRIGGER_LEVEL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
