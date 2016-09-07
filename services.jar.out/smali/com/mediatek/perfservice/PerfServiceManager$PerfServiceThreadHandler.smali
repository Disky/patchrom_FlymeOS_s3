.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x22

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x24

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x23

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x25

.field private static final MESSAGE_TIMER_DONT_USE1:I = 0xa

.field private static final MESSAGE_TIMER_SCN_APP_ROTATE:I = 0x6

.field private static final MESSAGE_TIMER_SCN_APP_SWITCH:I = 0x5

.field private static final MESSAGE_TIMER_SCN_APP_TOUCH:I = 0x9

.field private static final MESSAGE_TIMER_SCN_SW_CODEC:I = 0x7

.field private static final MESSAGE_TIMER_SCN_SW_CODEC_BOOST:I = 0x8

.field private static final MESSAGE_TIMER_SCN_SW_FRAME_UPDATE:I = 0xb

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0x40

.field private static final MESSAGE_TIMER_TOUCH_BOOST_DURATION:I = 0xc

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x26

.field private static final MESSAGE_USER_DISABLE:I = 0x1e

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x20

.field private static final MESSAGE_USER_ENABLE:I = 0x1b

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x1c

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x1d

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0x17

.field private static final MESSAGE_USER_REG:I = 0x14

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0x15

.field private static final MESSAGE_USER_REG_SCN:I = 0x18

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0x19

.field private static final MESSAGE_USER_RESET_ALL:I = 0x1f

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x21

.field private static final MESSAGE_USER_UNREG:I = 0x16

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x1a


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 360
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private getScenarioTimer(I)I
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 635
    packed-switch p1, :pswitch_data_0

    .line 655
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 637
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 640
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 643
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 646
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 649
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 652
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 627
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 626
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 562
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 563
    :cond_0
    return-void
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 568
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 569
    :cond_0
    return-void
.end method

.method private startCheckTouchBoostTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 580
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 589
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 590
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 591
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 601
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 602
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 603
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 605
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 617
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 619
    .local v0, "handle":I
    add-int/lit8 v2, v0, 0x40

    .line 620
    .local v2, "timer":I
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_0
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->getScenarioTimer(I)I

    move-result v0

    .line 573
    .local v0, "timer":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 574
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 575
    :cond_0
    return-void
.end method

.method private stopCheckTouchBoostTimer()V
    .locals 1

    .prologue
    .line 584
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 585
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 612
    add-int/lit8 v0, p1, 0x40

    .line 613
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 614
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x7

    .line 366
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 547
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_TIMER_SCN_USER_BASE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 548
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x40

    if-lt v3, v4, :cond_0

    .line 549
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 384
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 385
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 391
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_1

    .line 393
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 402
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 403
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 409
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 410
    .local v1, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_NOTIFY_APP_STATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 411
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$700(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$800(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$900(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I

    .line 412
    const/4 v1, 0x0

    .line 413
    const/4 v3, 0x0

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 419
    .end local v1    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :pswitch_6
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_SWITCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 420
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 426
    :pswitch_7
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_ROTATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 427
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 433
    :pswitch_8
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_CODEC"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 434
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 440
    :pswitch_9
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_CODEC_BOOST"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 441
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 447
    :pswitch_a
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_APP_TOUCH"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 448
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 454
    :pswitch_b
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_SCN_SW_FRAME_UPDATE"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 457
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 460
    :cond_2
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F
    invoke-static {v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 461
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 462
    .local v2, "utilization":F
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set utilization:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 465
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    goto/16 :goto_0

    .line 471
    .end local v2    # "utilization":F
    :pswitch_c
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_TIMER_TOUCH_BOOST_DURATION"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 472
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v4, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 473
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 479
    :pswitch_d
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 480
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    goto/16 :goto_0

    .line 486
    :pswitch_e
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 487
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 493
    :pswitch_f
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 494
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 495
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 501
    :pswitch_10
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 502
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 503
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 509
    :pswitch_11
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 510
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 516
    :pswitch_12
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_RESET_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 518
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 519
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 525
    :pswitch_13
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_DISABLE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 527
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 533
    :pswitch_14
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v4, "MESSAGE_USER_RESTORE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/perfservice/PerfServiceManager;->access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
