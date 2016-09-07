.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
.super Landroid/widget/FrameLayout;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdSinkLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;
    }
.end annotation


# instance fields
.field private mCatchEvents:Z

.field private mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

.field private mFocusGetCallback:Ljava/lang/Runnable;

.field private mFullScreenFlag:Z

.field private mHasFocus:Z

.field private mHasPerformedLongPress:Z

.field private mInitX:F

.field private mInitY:F

.field private mTouchSlop:I

.field final synthetic this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 353
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    .line 354
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 343
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    .line 349
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    .line 350
    iput-boolean v1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    .line 355
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mTouchSlop:I

    .line 356
    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Landroid/view/ViewParent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setCatchEvents(Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setOnFocusGetCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->setFullScreenFlag(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    return v0
.end method

.method private checkForLongClick(I)V
    .locals 4
    .param p1, "delayOffset"    # I

    .prologue
    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 527
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;-><init>(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;)V

    iput-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;->rememberWindowAttachCount()V

    .line 531
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    return-void
.end method

.method private getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 506
    .local v2, "pointerCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 509
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "ret":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private removePendingCallback()V
    .locals 2

    .prologue
    .line 535
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removePendingCallback"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCountDown:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout$CountDown;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 538
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # invokes: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->removeCountDown()V
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1500(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)V

    .line 540
    :cond_0
    return-void
.end method

.method private sendUibcInputEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventDesc"    # Ljava/lang/String;

    .prologue
    .line 521
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUibcInputEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mExt:Lcom/mediatek/settings/wfd/WfdSinkExt;
    invoke-static {v0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1400(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Lcom/mediatek/settings/wfd/WfdSinkExt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/settings/wfd/WfdSinkExt;->sendUibcEvent(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private setCatchEvents(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    .line 544
    return-void
.end method

.method private setFullScreenFlag(Z)V
    .locals 0
    .param p1, "fullScreen"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    .line 548
    return-void
.end method

.method private setOnFocusGetCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    .line 552
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    .line 557
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 558
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 422
    iget-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-nez v2, :cond_1

    .line 423
    const/4 v1, 0x0

    .line 448
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 425
    :cond_1
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenericMotionEvent event.getSource()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x2002

    if-ne v2, v3, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 431
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v0, "eventDesc":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    iget-boolean v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFullScreenFlag:Z

    if-nez v5, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v4

    .line 456
    :cond_1
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyPreIme keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v5, :cond_0

    .line 458
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 459
    .local v0, "asciiCode":I
    if-eqz v0, :cond_2

    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    .line 460
    :cond_2
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find unicode for keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->keyCodeToAscii(I)I

    move-result v0

    .line 463
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v2, v3

    .line 464
    .local v2, "onKeyUp":Z
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mLatinCharTest:Z
    invoke-static {v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1200(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x83

    if-ne p1, v5, :cond_4

    .line 465
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Latin Test Mode enabled"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I
    invoke-static {v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    move-result v0

    .line 467
    if-eqz v2, :cond_4

    .line 468
    iget-object v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I
    invoke-static {v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1300(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_6

    .line 469
    iget-object v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    const/16 v6, 0xa0

    # setter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I
    invoke-static {v5, v6}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1302(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;I)I

    .line 475
    :cond_4
    :goto_2
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyPreIme asciiCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-nez v0, :cond_7

    .line 477
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find control for keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "onKeyUp":Z
    :cond_5
    move v2, v4

    .line 463
    goto :goto_1

    .line 471
    .restart local v2    # "onKeyUp":Z
    :cond_6
    iget-object v5, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->this$0:Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;

    # operator++ for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->mTestLatinChar:I
    invoke-static {v5}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$1308(Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;)I

    goto :goto_2

    .line 479
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v1, "eventDesc":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_8

    const/4 v5, 0x4

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0x%04x"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 0x0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    move v4, v3

    .line 487
    goto/16 :goto_0

    .line 480
    :cond_8
    const/4 v5, 0x3

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    iget-boolean v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mCatchEvents:Z

    if-nez v4, :cond_0

    .line 417
    :goto_0
    return v2

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 364
    .local v0, "action":I
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v3

    .line 417
    goto :goto_0

    .line 367
    :pswitch_0
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v1, "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 376
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitX:F

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitY:F

    .line 378
    iput-boolean v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasPerformedLongPress:Z

    .line 379
    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->checkForLongClick(I)V

    goto :goto_1

    .line 383
    :pswitch_1
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_3

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .restart local v1    # "eventDesc":Ljava/lang/StringBuilder;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 392
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto :goto_1

    .line 396
    :pswitch_2
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SINK_UIBC_SUPPORT:Z

    if-eqz v2, :cond_4

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .restart local v1    # "eventDesc":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {p0, p1}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->getTouchEventDesc(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->sendUibcInputEvent(Ljava/lang/String;)V

    .line 405
    .end local v1    # "eventDesc":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitX:F

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v6, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mInitY:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v2, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mTouchSlop:I

    int-to-double v6, v2

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto/16 :goto_1

    .line 411
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->removePendingCallback()V

    goto/16 :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 496
    # getter for: Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iput-boolean p1, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mHasFocus:Z

    .line 498
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$WfdSinkLayout;->mFocusGetCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 501
    :cond_0
    return-void
.end method
