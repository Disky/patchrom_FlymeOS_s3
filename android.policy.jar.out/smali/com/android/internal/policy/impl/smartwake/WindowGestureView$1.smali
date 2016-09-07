.class Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;
.super Landroid/os/Handler;
.source "WindowGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/smartwake/WindowGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    # getter for: Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->wm:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->access$100(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    # getter for: Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->access$000(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GESTURE_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    # getter for: Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->access$200(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->access$302(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;Z)Z

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
