.class public Lcom/android/extrasettings/IncomingCall$FlashThread;
.super Ljava/lang/Object;
.source "IncomingCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/IncomingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlashThread"
.end annotation


# instance fields
.field backgroundThread:Ljava/lang/Thread;

.field cam:Landroid/hardware/Camera;

.field camParams:Landroid/hardware/Camera$Parameters;

.field final synthetic this$0:Lcom/android/extrasettings/IncomingCall;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/IncomingCall;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object p1, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->this$0:Lcom/android/extrasettings/IncomingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    .line 68
    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->this$0:Lcom/android/extrasettings/IncomingCall;

    iget-boolean v0, v0, Lcom/android/extrasettings/IncomingCall;->isWorking:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    .line 92
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 96
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 97
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 98
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->camParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 100
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 101
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 110
    iput-object v2, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    .line 112
    :goto_1
    return-void

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_2
    iput-object v2, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    .line 74
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->cam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/IncomingCall$FlashThread;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 85
    :cond_1
    return-void
.end method
