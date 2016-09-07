.class public Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;
.super Landroid/widget/TextView;
.source "DoubleClickTestArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/inputmethod/DoubleClickTestArea$1;,
        Lcom/mediatek/settings/inputmethod/DoubleClickTestArea$DoubleClickHandler;
    }
.end annotation


# instance fields
.field private bLargeText:Z

.field private mDoubleClickDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsDoubleTapping:Z

.field private mPreviousDownEvent:Landroid/view/MotionEvent;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x12c

    iput v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mDoubleClickDuration:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->bLargeText:Z

    .line 27
    new-instance v0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea$DoubleClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea$DoubleClickHandler;-><init>(Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;Lcom/mediatek/settings/inputmethod/DoubleClickTestArea$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mHandler:Landroid/os/Handler;

    .line 28
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setTextSize(F)V

    .line 29
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z

    return p1
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z

    .line 89
    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mDoubleClickDuration:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 98
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 99
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 35
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    return v2

    .line 37
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 38
    .local v1, "hadTapMessage":Z
    if-eqz v1, :cond_0

    .line 39
    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousDownEvent:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v4, v5, p1}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    iput-boolean v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z

    .line 45
    const/4 v2, 0x1

    .line 51
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 48
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mDoubleClickDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    const/4 v2, 0x1

    goto :goto_1

    .line 57
    .end local v1    # "hadTapMessage":Z
    :pswitch_2
    iget-boolean v5, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z

    if-eqz v5, :cond_3

    .line 59
    iget-boolean v5, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->bLargeText:Z

    if-eqz v5, :cond_5

    .line 60
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setTextSize(F)V

    .line 64
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->bLargeText:Z

    if-nez v5, :cond_6

    :goto_3
    iput-boolean v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->bLargeText:Z

    .line 65
    const/4 v2, 0x1

    .line 67
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_4

    .line 68
    iget-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 70
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 71
    iput-boolean v4, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z

    .line 72
    const/4 v2, 0x1

    .line 73
    goto :goto_0

    .line 62
    :cond_5
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p0, v5}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setTextSize(F)V

    goto :goto_2

    :cond_6
    move v3, v4

    .line 64
    goto :goto_3

    .line 75
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->cancel()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDurationTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->mDoubleClickDuration:I

    .line 84
    return-void
.end method
