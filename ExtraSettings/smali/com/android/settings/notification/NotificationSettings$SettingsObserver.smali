.class final Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/extrasettings/notification/NotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    .line 495
    # getter for: Lcom/android/extrasettings/notification/NotificationSettings;->mHandler:Lcom/android/extrasettings/notification/NotificationSettings$H;
    invoke-static {p1}, Lcom/android/extrasettings/notification/NotificationSettings;->access$300(Lcom/android/extrasettings/notification/NotificationSettings;)Lcom/android/extrasettings/notification/NotificationSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 485
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 487
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 489
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 491
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 496
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 512
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 513
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1400(Lcom/android/extrasettings/notification/NotificationSettings;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->updatePulse()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1500(Lcom/android/extrasettings/notification/NotificationSettings;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->updateLockscreenNotifications()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1600(Lcom/android/extrasettings/notification/NotificationSettings;)V

    .line 522
    :cond_3
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1300(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 500
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 502
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 503
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 504
    iget-object v1, p0, Lcom/android/extrasettings/notification/NotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
