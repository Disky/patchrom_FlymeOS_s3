.class public Lcom/android/server/notification/NotificationManagerService$FlashlightController;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashlightController"
.end annotation


# instance fields
.field public cam:Landroid/hardware/Camera;

.field private camParams:Landroid/hardware/Camera$Parameters;

.field on:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Z)V
    .locals 1
    .param p2, "param"    # Z

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$FlashlightController;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$FlashlightController;->on:Z

    .line 3498
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$FlashlightController;->on:Z

    .line 3499
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3506
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$FlashlightController;->on:Z

    if-eqz v2, :cond_0

    .line 3509
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 3510
    .local v0, "cam":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 3511
    .local v1, "camParams":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3512
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3514
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3529
    .end local v0    # "cam":Landroid/hardware/Camera;
    .end local v1    # "camParams":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 3518
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 3519
    .restart local v0    # "cam":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 3520
    .restart local v1    # "camParams":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3521
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 3522
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3523
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3525
    .end local v0    # "cam":Landroid/hardware/Camera;
    .end local v1    # "camParams":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setOn(Z)V
    .locals 0
    .param p1, "param"    # Z

    .prologue
    .line 3501
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$FlashlightController;->on:Z

    .line 3502
    return-void
.end method
