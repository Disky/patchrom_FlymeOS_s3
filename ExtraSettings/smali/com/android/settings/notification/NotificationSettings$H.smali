.class final Lcom/android/extrasettings/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    .line 533
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 534
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/notification/NotificationSettings;Lcom/android/extrasettings/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/notification/NotificationSettings$1;

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/extrasettings/notification/NotificationSettings$H;-><init>(Lcom/android/extrasettings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # getter for: Lcom/android/extrasettings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$400(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 543
    :pswitch_1
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # getter for: Lcom/android/extrasettings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$700(Lcom/android/extrasettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # getter for: Lcom/android/extrasettings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1700(Lcom/android/extrasettings/notification/NotificationSettings;)Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 549
    :pswitch_3
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->updateEffectsSuppressor()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1800(Lcom/android/extrasettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 552
    :pswitch_4
    iget-object v0, p0, Lcom/android/extrasettings/notification/NotificationSettings$H;->this$0:Lcom/android/extrasettings/notification/NotificationSettings;

    # invokes: Lcom/android/extrasettings/notification/NotificationSettings;->updateRingerMode()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/NotificationSettings;->access$1900(Lcom/android/extrasettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
