.class Lcom/android/server/HallSwitchObserver$1;
.super Landroid/os/Handler;
.source "HallSwitchObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HallSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HallSwitchObserver;


# direct methods
.method constructor <init>(Lcom/android/server/HallSwitchObserver;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/HallSwitchObserver$1;->this$0:Lcom/android/server/HallSwitchObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 51
    :goto_5
    return-void

    .line 47
    :pswitch_6
    # getter for: Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/HallSwitchObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/server/HallSwitchObserver$1;->this$0:Lcom/android/server/HallSwitchObserver;

    iget-object v0, v0, Lcom/android/server/HallSwitchObserver;->mPmg:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_5

    .line 45
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
