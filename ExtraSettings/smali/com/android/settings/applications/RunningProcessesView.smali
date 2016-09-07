.class public Lcom/android/extrasettings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/extrasettings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mAppsProcessPrefix:Landroid/widget/TextView;

.field mAppsProcessText:Landroid/widget/TextView;

.field mBackgroundProcessPrefix:Landroid/widget/TextView;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/extrasettings/applications/LinearColorBar;

.field mCurHighRam:J

.field mCurLowRam:J

.field mCurMedRam:J

.field mCurSelected:Lcom/android/extrasettings/applications/RunningState$BaseItem;

.field mCurShowCached:Z

.field mCurTotalRam:J

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessPrefix:Landroid/widget/TextView;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mHeader:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/extrasettings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, -0x1

    .line 490
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 95
    iput-wide v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 96
    iput-wide v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurHighRam:J

    .line 97
    iput-wide v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurMedRam:J

    .line 98
    iput-wide v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurLowRam:J

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 103
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMyUserId:I

    .line 492
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/extrasettings/applications/RunningState$MergedItem;)V
    .locals 7
    .param p1, "mi"    # Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .prologue
    const/4 v4, 0x0

    .line 463
    if-nez p1, :cond_1

    .line 464
    const-string v1, "RunningProcessesView"

    const-string v3, "mi is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 471
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v2, "args":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_2

    .line 473
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_2
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 480
    .local v0, "sa":Lcom/android/extrasettings/SettingsActivity;
    const-class v1, Lcom/android/extrasettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090608

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/extrasettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/applications/RunningState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    .line 497
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 499
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400bb

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 500
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 501
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 503
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 505
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 506
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 507
    new-instance v4, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-direct {v4, p0, v5}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/extrasettings/applications/RunningProcessesView;Lcom/android/extrasettings/applications/RunningState;)V

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 508
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    const v4, 0x7f0400b9

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    .line 510
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 511
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f10019c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/applications/LinearColorBar;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mColorBar:Lcom/android/extrasettings/applications/LinearColorBar;

    .line 512
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 513
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mColorBar:Lcom/android/extrasettings/applications/LinearColorBar;

    const v5, 0x7f080033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f080034

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f080035

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/extrasettings/applications/LinearColorBar;->setColors(III)V

    .line 516
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f1001a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mBackgroundProcessPrefix:Landroid/widget/TextView;

    .line 517
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f10019f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    .line 518
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f10019d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    .line 519
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f1001a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 520
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f1001a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    .line 521
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mHeader:Landroid/view/View;

    const v5, 0x7f10019e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 523
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 524
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 525
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 526
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/RunningState;->pause()V

    .line 530
    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 531
    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 532
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 535
    iput-object p1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 536
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/applications/RunningState;->resume(Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;)V

    .line 537
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/extrasettings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 544
    :goto_0
    return v0

    .line 543
    :cond_0
    iput-object p2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 544
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 455
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 456
    .local v1, "mi":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurSelected:Lcom/android/extrasettings/applications/RunningState$BaseItem;

    .line 457
    invoke-direct {p0, v1}, Lcom/android/extrasettings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/extrasettings/applications/RunningState$MergedItem;)V

    .line 458
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 562
    packed-switch p1, :pswitch_data_0

    .line 575
    :goto_0
    return-void

    .line 564
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 567
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 571
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 30
    .param p1, "dataChanged"    # Z

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    .line 338
    .local v4, "adapter":Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v4}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 339
    invoke-virtual {v4}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 342
    .end local v4    # "adapter":Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Runnable;->run()V

    .line 344
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 347
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 357
    const-string v23, "ro.default_cache_free"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 358
    .local v14, "isDefaultCacheFree":Z
    const-string v23, "RunningProcessesView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "isDefaultCacheFree = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 365
    :try_start_0
    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F

    move-result v22

    .line 366
    .local v22, "zramCompressRatio":F
    const-wide/16 v10, 0x0

    .line 367
    .local v10, "extraAvailableSize":J
    if-nez v14, :cond_2

    .line 368
    const-wide/32 v6, 0xf00000

    .line 369
    .local v6, "anonReserve":J
    invoke-static {}, Landroid/os/Process;->getLruAnonMemory()J

    move-result-wide v26

    const-wide/32 v28, 0xf00000

    sub-long v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 370
    .local v8, "anonToCompress":J
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Process.getLruAnonMemory() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Process;->getLruAnonMemory()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mState.mBackgroundProcessMemory = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-wide/16 v26, 0x0

    cmp-long v23, v8, v26

    if-lez v23, :cond_6

    .line 373
    long-to-float v0, v8

    move/from16 v23, v0

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    div-float v26, v26, v22

    sub-float v25, v25, v26

    mul-float v23, v23, v25

    move/from16 v0, v23

    float-to-long v10, v0

    .line 379
    .end local v6    # "anonReserve":J
    .end local v8    # "anonToCompress":J
    :cond_2
    :goto_0
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "extraAvailableSize = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurShowCached:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAdapter:Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurShowCached:Z

    .line 385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurShowCached:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090605

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090606

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v20

    .line 403
    .local v20, "totalRam":J
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getFreeSize = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getCachedSize = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mBackgroundProcessMemory = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "extraAvailableSize = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mBackgroundProcessSwapMemory = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessSwapMemory:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Process.getZramCompressRatio() = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurShowCached:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v28

    add-long v26, v26, v28

    add-long v16, v26, v10

    .line 412
    .local v16, "lowRam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessSwapMemory:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    mul-float v25, v25, v26

    div-float v25, v25, v22

    add-float v23, v23, v25

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v18, v0

    .line 421
    .local v18, "medRam":J
    :goto_2
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "lowRam = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "medRam = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sub-long v26, v20, v18

    sub-long v12, v26, v16

    .line 427
    .local v12, "highRam":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurTotalRam:J

    move-wide/from16 v26, v0

    cmp-long v23, v26, v20

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurHighRam:J

    move-wide/from16 v26, v0

    cmp-long v23, v26, v12

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurMedRam:J

    move-wide/from16 v26, v0

    cmp-long v23, v26, v18

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurLowRam:J

    move-wide/from16 v26, v0

    cmp-long v23, v26, v16

    if-eqz v23, :cond_5

    .line 429
    :cond_4
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurTotalRam:J

    .line 430
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurHighRam:J

    .line 431
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurMedRam:J

    .line 432
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningProcessesView;->mCurLowRam:J

    .line 433
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .line 434
    .local v5, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 436
    .local v15, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090607

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v15, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAppsProcessText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090607

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v15, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090607

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v15, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mColorBar:Lcom/android/extrasettings/applications/LinearColorBar;

    move-object/from16 v23, v0

    long-to-float v0, v12

    move/from16 v25, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v26, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v27, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/extrasettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 450
    .end local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v15    # "sizeStr":Ljava/lang/String;
    :cond_5
    monitor-exit v24

    .line 451
    return-void

    .line 376
    .end local v12    # "highRam":J
    .end local v16    # "lowRam":J
    .end local v18    # "medRam":J
    .end local v20    # "totalRam":J
    .restart local v6    # "anonReserve":J
    .restart local v8    # "anonToCompress":J
    :cond_6
    const-string v23, "RunningProcessesView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "!!!ERROR!!! annonToCompress = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    .end local v6    # "anonReserve":J
    .end local v8    # "anonToCompress":J
    .end local v10    # "extraAvailableSize":J
    .end local v22    # "zramCompressRatio":F
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 391
    .restart local v10    # "extraAvailableSize":J
    .restart local v22    # "zramCompressRatio":F
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mForegroundProcessPrefix:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090602

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mAppsProcessPrefix:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090603

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 415
    .restart local v20    # "totalRam":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v28

    add-long v26, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    add-long v26, v26, v10

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessSwapMemory:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    mul-float v25, v25, v26

    div-float v25, v25, v22

    add-float v23, v23, v25

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v16, v0

    .line 418
    .restart local v16    # "lowRam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView;->mState:Lcom/android/extrasettings/applications/RunningState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v18    # "medRam":J
    goto/16 :goto_2
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 548
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    .line 551
    .local v0, "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 558
    .end local v0    # "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
