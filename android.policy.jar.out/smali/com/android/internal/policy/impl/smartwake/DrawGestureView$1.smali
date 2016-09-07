.class Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;
.super Landroid/os/Handler;
.source "DrawGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/smartwake/DrawGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartwake/DrawGestureView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    # operator++ for: Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->mRectIndex:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->access$008(Lcom/android/internal/policy/impl/smartwake/DrawGestureView;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    # getter for: Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->mRectIndex:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->access$000(Lcom/android/internal/policy/impl/smartwake/DrawGestureView;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->invalidate()V

    .line 151
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->invalidate()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->removeMessages(I)V

    .line 155
    const/4 v0, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->mListener:Lcom/android/internal/policy/impl/smartwake/DrawGestureView$OnGestureDrawDoneListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$OnGestureDrawDoneListener;->OnGestureDrawDone()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    const/4 v1, -0x1

    # setter for: Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->mRectIndex:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->access$002(Lcom/android/internal/policy/impl/smartwake/DrawGestureView;I)I

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    # invokes: Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->recycle()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->access$100(Lcom/android/internal/policy/impl/smartwake/DrawGestureView;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->invalidate()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
