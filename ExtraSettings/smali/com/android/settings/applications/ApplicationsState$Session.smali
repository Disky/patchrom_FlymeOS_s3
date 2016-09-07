.class public Lcom/android/extrasettings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/extrasettings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/ApplicationsState;Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 481
    iput-object p2, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;

    .line 482
    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 12

    .prologue
    .line 549
    iget-object v10, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    .line 550
    :try_start_0
    iget-boolean v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_0

    .line 551
    monitor-exit v10

    .line 617
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 555
    .local v3, "filter":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 556
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 557
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 558
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 559
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    const/4 v9, -0x2

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 563
    if-eqz v3, :cond_1

    .line 564
    invoke-interface {v3}, Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;->init()V

    .line 568
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 569
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 570
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 572
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 575
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 577
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    sget-boolean v9, Lcom/mediatek/settings/FeatureOption;->MTK_ONLY_OWNER_SIM_SUPPORT:Z

    if-eqz v9, :cond_3

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 579
    .local v8, "userId":I
    if-eqz v8, :cond_3

    .line 580
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v10, "com.android.mms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 574
    .end local v8    # "userId":I
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 559
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filter":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 570
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 586
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    .restart local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3, v6}, Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 587
    :cond_4
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 589
    :try_start_4
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v9, v6}, Lcom/android/extrasettings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 590
    .local v2, "entry":Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    monitor-exit v10

    goto :goto_2

    .end local v2    # "entry":Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v9

    .line 598
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 600
    iget-object v10, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    .line 601
    :try_start_5
    iget-boolean v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_6

    .line 602
    iput-object v4, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 603
    iget-boolean v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v9, :cond_7

    .line 604
    iput-object v4, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 605
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 614
    :cond_6
    :goto_3
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 616
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 607
    :cond_7
    :try_start_6
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mMainHandler:Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 608
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mMainHandler:Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 610
    .local v7, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/extrasettings/applications/ApplicationsState;->mMainHandler:Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v7}, Lcom/android/extrasettings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 614
    .end local v7    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v9
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mResumed:Z

    .line 501
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 502
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 506
    :cond_0
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "filter"    # Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v7, v1, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 513
    :try_start_1
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 515
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 516
    iput-object p1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 517
    iput-object p2, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 519
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 522
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xfa

    add-long v4, v8, v10

    .line 529
    .local v4, "waitend":J
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 531
    .local v2, "now":J
    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 540
    .end local v2    # "now":J
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 542
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 524
    .end local v4    # "waitend":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 543
    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 535
    .restart local v2    # "now":J
    .restart local v4    # "waitend":J
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v8, v4, v2

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 536
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->pause()V

    .line 621
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->mResumed:Z

    .line 489
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/extrasettings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 490
    iget-object v0, p0, Lcom/android/extrasettings/applications/ApplicationsState$Session;->this$0:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 492
    :cond_0
    monitor-exit v1

    .line 494
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
