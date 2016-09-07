.class public Lcom/mediatek/audioprofile/LosslessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LosslessReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private cancelNotification(Landroid/app/NotificationManager;I)V
    .locals 2
    .param p1, "mNotificationManager"    # Landroid/app/NotificationManager;
    .param p2, "id"    # I

    .prologue
    .line 121
    const-string v0, "Lossless_notification"

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 122
    return-void
.end method

.method private createNotification(Landroid/app/NotificationManager;ILandroid/content/Intent;Landroid/content/Context;ZI)V
    .locals 12
    .param p1, "mNotificationManager"    # Landroid/app/NotificationManager;
    .param p2, "icon"    # I
    .param p3, "audioProfileIntent"    # Landroid/content/Intent;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "iconChange"    # Z
    .param p6, "textId"    # I

    .prologue
    .line 85
    const/4 v2, 0x0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v1, p4

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 89
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOSSLESS_NOTIFICATION_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 92
    .local v8, "deleteIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v7, "builder":Landroid/app/Notification$Builder;
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04006c

    invoke-direct {v11, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v11, "views":Landroid/widget/RemoteViews;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 97
    .local v9, "notification":Landroid/app/Notification;
    iput-object v11, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 98
    iput p2, v9, Landroid/app/Notification;->icon:I

    .line 99
    iput-object v10, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 100
    iput-object v8, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 103
    if-eqz p5, :cond_0

    .line 104
    const v1, 0x7f100042

    const v2, 0x7f020018

    invoke-virtual {v11, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 109
    :goto_0
    const v1, 0x7f100026

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    const v1, 0x7f020017

    invoke-direct {p0, p1, v1, v9}, Lcom/mediatek/audioprofile/LosslessReceiver;->installNotification(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 112
    return-void

    .line 106
    :cond_0
    const v1, 0x7f100042

    const v2, 0x7f020017

    invoke-virtual {v11, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method private installNotification(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 2
    .param p1, "mNotificationManager"    # Landroid/app/NotificationManager;
    .param p2, "notificationId"    # I
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    .line 116
    const-string v0, "Lossless_notification"

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f020017

    .line 53
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 54
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v3, "audioProfileIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings$SoundEnhancementActivity"

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    const-string v0, "android.intent.action.LOSSLESS_CLOSE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "LosslessReceiver"

    const-string v4, "close the lossless."

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0, v1, v2}, Lcom/mediatek/audioprofile/LosslessReceiver;->cancelNotification(Landroid/app/NotificationManager;I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "android.intent.action.LOSSLESS_PLAYING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "LosslessReceiver"

    const-string v2, "playing the lossless."

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const v2, 0x7f020018

    const/4 v5, 0x1

    const v6, 0x7f090039

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/audioprofile/LosslessReceiver;->createNotification(Landroid/app/NotificationManager;ILandroid/content/Intent;Landroid/content/Context;ZI)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "android.intent.action.LOSSLESS_ADD"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    const-string v0, "LosslessReceiver"

    const-string v4, "open the lossless."

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v6, 0x7f090038

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/audioprofile/LosslessReceiver;->createNotification(Landroid/app/NotificationManager;ILandroid/content/Intent;Landroid/content/Context;ZI)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v0, "android.intent.action.LOSSLESS_STOP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    const-string v0, "LosslessReceiver"

    const-string v4, "stop the lossless."

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v6, 0x7f09003b

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/audioprofile/LosslessReceiver;->createNotification(Landroid/app/NotificationManager;ILandroid/content/Intent;Landroid/content/Context;ZI)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v0, "android.intent.action.LOSSLESS_NOTIFICATION_CLOSE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    const-string v0, "LosslessReceiver"

    const-string v2, "close the notification lossless."

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "LosslessBT_Status=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v0, "android.intent.action.LOSSLESS_NOT_SUPPORT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "LosslessReceiver"

    const-string v4, "cannot found the lossless device."

    invoke-static {v0, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v6, 0x7f09003c

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/audioprofile/LosslessReceiver;->createNotification(Landroid/app/NotificationManager;ILandroid/content/Intent;Landroid/content/Context;ZI)V

    goto/16 :goto_0
.end method
