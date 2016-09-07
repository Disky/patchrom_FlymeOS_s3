.class Lcom/android/internal/policy/impl/smartwake/WindowGestureView$2;
.super Ljava/lang/Object;
.source "WindowGestureView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/smartwake/DrawGestureView$OnGestureDrawDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->initView()V
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
    .line 75
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGestureDrawDone()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    # getter for: Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->access$400(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    return-void
.end method
