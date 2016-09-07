.class public Lcom/android/internal/policy/impl/smartwake/WindowGestureView;
.super Ljava/lang/Object;
.source "WindowGestureView.java"


# static fields
.field private static final HIDE:I = 0x1

.field private static final SHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowGestureView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

.field private mGestureId:I

.field private final mGestureReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mViewflag:Z

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mGestureId:I

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$1;-><init>(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$3;-><init>(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mGestureReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->initView()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Lcom/android/internal/policy/impl/smartwake/DrawGestureView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/smartwake/WindowGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/smartwake/WindowGestureView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public hideView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z

    if-ne v0, v2, :cond_0

    .line 95
    const-string v0, "WindowGestureView"

    const-string v1, "hide view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->registerBroadcast()V

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->wm:Landroid/view/WindowManager;

    .line 64
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->params:Landroid/view/WindowManager$LayoutParams;

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z

    .line 75
    new-instance v0, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    new-instance v1, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/smartwake/WindowGestureView$2;-><init>(Lcom/android/internal/policy/impl/smartwake/WindowGestureView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->setOnGestureDrawDoneListener(Lcom/android/internal/policy/impl/smartwake/DrawGestureView$OnGestureDrawDoneListener;)V

    .line 82
    return-void
.end method

.method public registerBroadcast()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.GESTURE_O"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.GESTURE_W"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.GESTURE_C"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.GESTURE_E"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.GESTURE_M"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mGestureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method public showView(I)V
    .locals 3
    .param p1, "gesture"    # I

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z

    if-nez v0, :cond_0

    .line 86
    const-string v0, "WindowGestureView"

    const-string v1, "show view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mDrawGestureView:Lcom/android/internal/policy/impl/smartwake/DrawGestureView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/smartwake/DrawGestureView;->showView(I)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/smartwake/WindowGestureView;->mViewflag:Z

    .line 91
    :cond_0
    return-void
.end method
