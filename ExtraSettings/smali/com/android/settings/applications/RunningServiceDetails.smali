.class public Lcom/android/extrasettings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/extrasettings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/RunningServiceDetails;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/applications/RunningServiceDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/RunningServiceDetails;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 524
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/extrasettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/extrasettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 593
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/extrasettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/extrasettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 595
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 596
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 597
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;

    .line 584
    .local v0, "ad":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    .end local v0    # "ad":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 582
    .restart local v0    # "ad":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v0    # "ad":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 463
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 464
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 463
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 468
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 470
    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 475
    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 478
    :cond_2
    iput v5, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumServices:I

    .line 480
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    .line 481
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    .line 483
    iget-boolean v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 489
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 490
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 487
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto :goto_1

    .line 492
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 493
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 496
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V

    .line 499
    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V
    .locals 7
    .param p1, "item"    # Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .param p2, "inclServices"    # Z
    .param p3, "inclProcesses"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 432
    if-eqz p1, :cond_1

    .line 433
    if-eqz p2, :cond_0

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 435
    iget-object v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/extrasettings/applications/RunningState$ServiceItem;Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 440
    iget-object v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 444
    const/4 v5, 0x0

    iget v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/extrasettings/applications/RunningState$ServiceItem;Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V

    .line 460
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 444
    goto :goto_1

    .line 448
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 449
    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 451
    .local v1, "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    .line 448
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 449
    .end local v1    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_4
    iget-object v2, p1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 455
    .restart local v1    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/extrasettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/extrasettings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .param p1, "pi"    # Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .param p2, "isMain"    # Z

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 361
    new-instance v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/extrasettings/applications/RunningServiceDetails;)V

    .line 362
    .local v2, "detail":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400bd

    iget-object v11, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 364
    .local v5, "root":Landroid/view/View;
    iget-object v9, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    iput-object v5, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 366
    new-instance v9, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    .line 367
    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/extrasettings/applications/RunningState;Lcom/android/extrasettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    .line 370
    const v9, 0x7f1000d8

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    .line 371
    const v9, 0x7f1000d6

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    .line 372
    const v9, 0x7f1000d7

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    .line 373
    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    iget-object v10, v10, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/extrasettings/applications/RunningState$BaseItem;

    iget-object v10, v10, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    .line 379
    iget-object v10, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    iget-object v9, v2, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    const v9, 0x7f1001a7

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 383
    .local v1, "description":Landroid/widget/TextView;
    iget v9, p1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 386
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    return-void

    .line 379
    .end local v1    # "description":Landroid/widget/TextView;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 387
    .restart local v1    # "description":Landroid/widget/TextView;
    :cond_2
    if-eqz p2, :cond_3

    .line 388
    const v9, 0x7f090612

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 390
    :cond_3
    const/4 v8, 0x0

    .line 391
    .local v8, "textid":I
    const/4 v3, 0x0

    .line 392
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 393
    .local v6, "rpi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 396
    .local v0, "comp":Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 422
    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 398
    :pswitch_0
    const v8, 0x7f090614

    .line 399
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 403
    .local v4, "prov":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/extrasettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_2

    .line 410
    .end local v4    # "prov":Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f090613

    .line 411
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    .line 413
    :try_start_1
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 415
    .local v7, "serv":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/extrasettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 417
    .end local v7    # "serv":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 405
    :catch_1
    move-exception v9

    goto :goto_2

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    .prologue
    .line 258
    iget v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c6

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 261
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f09060b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    :cond_0
    iget v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 265
    return-void
.end method

.method addServiceDetailsView(Lcom/android/extrasettings/applications/RunningState$ServiceItem;Lcom/android/extrasettings/applications/RunningState$MergedItem;ZZ)V
    .locals 11
    .param p1, "si"    # Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    .param p2, "mi"    # Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .param p3, "isService"    # Z
    .param p4, "inclDetails"    # Z

    .prologue
    .line 269
    if-eqz p3, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addServicesHeader()V

    .line 279
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 281
    .local v0, "bi":Lcom/android/extrasettings/applications/RunningState$BaseItem;
    :goto_1
    new-instance v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/extrasettings/applications/RunningServiceDetails;)V

    .line 282
    .local v3, "detail":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400be

    iget-object v9, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 284
    .local v6, "root":Landroid/view/View;
    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    iput-object v6, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 286
    iput-object p1, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 287
    new-instance v7, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    .line 288
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v9, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/extrasettings/applications/RunningState;Lcom/android/extrasettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    .line 290
    if-nez p4, :cond_1

    .line 291
    const v7, 0x7f1001a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    .line 295
    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 299
    :cond_2
    const v7, 0x7f1001a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 300
    .local v2, "description":Landroid/widget/TextView;
    const v7, 0x7f1001ea

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 301
    const v7, 0x7f1001eb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 303
    if-eqz p3, :cond_5

    iget v7, p2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 307
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    const v7, 0x7f1000bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_2
    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void

    .line 271
    .end local v0    # "bi":Lcom/android/extrasettings/applications/RunningState$BaseItem;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "detail":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v6    # "root":Landroid/view/View;
    :cond_3
    iget v7, p2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 279
    goto/16 :goto_1

    .line 310
    .restart local v0    # "bi":Lcom/android/extrasettings/applications/RunningState$BaseItem;
    .restart local v2    # "description":Landroid/widget/TextView;
    .restart local v3    # "detail":Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6    # "root":Landroid/view/View;
    :cond_5
    if-eqz p1, :cond_6

    iget-object v7, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :goto_3
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v8, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_a

    const v7, 0x7f09060d

    :goto_4
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x104048f

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 344
    .local v4, "enabled":I
    if-eqz v4, :cond_c

    if-eqz p1, :cond_c

    iget-object v7, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_c

    .line 346
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 349
    iget-object v8, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 315
    .end local v4    # "enabled":I
    :cond_6
    iget-boolean v7, p2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mBackground:Z

    if-eqz v7, :cond_7

    .line 316
    const v7, 0x7f090610

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 317
    :cond_7
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_8

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 321
    .local v1, "clientr":Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090611

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 324
    .end local v1    # "clientr":Landroid/content/res/Resources;
    .end local v5    # "label":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 327
    :cond_8
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_9

    const v7, 0x7f09060e

    :goto_6
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v7, 0x7f09060f

    goto :goto_6

    .line 334
    :cond_a
    const v7, 0x7f09060c

    goto/16 :goto_4

    .line 349
    .restart local v4    # "enabled":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 351
    :cond_c
    iget-object v7, v3, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method addServicesHeader()V
    .locals 4

    .prologue
    .line 248
    iget v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400c6

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 251
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f09060a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    :cond_0
    iget v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mNumServices:I

    .line 255
    return-void
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 645
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 646
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 647
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/applications/RunningState;->resume(Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/RunningState;->waitForData()V

    .line 656
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 658
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "item":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/extrasettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_5

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 225
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 226
    .local v2, "mi":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    iget v5, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/extrasettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 229
    .restart local v0    # "i":I
    .restart local v2    # "mi":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .restart local v3    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    .line 232
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    :cond_4
    move-object v1, v2

    .line 240
    .end local v0    # "i":I
    .end local v2    # "mi":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_5
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    .line 241
    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 242
    const/4 v4, 0x1

    .line 244
    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mUid:I

    .line 540
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mUserId:I

    .line 541
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 542
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 545
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 547
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/extrasettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    .line 548
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 553
    const v1, 0x7f0400bc

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/extrasettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 556
    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 557
    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 558
    const v1, 0x7f1001a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 559
    new-instance v1, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    .line 563
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->ensureData()V

    .line 565
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 572
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/RunningState;->pause()V

    .line 573
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 672
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 674
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 677
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 678
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 681
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 682
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 578
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->ensureData()V

    .line 579
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 p1, 0x1

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/extrasettings/applications/RunningState;Lcom/android/extrasettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    .line 519
    :goto_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 521
    :cond_1
    :goto_1
    return-void

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f090609

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 664
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/extrasettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    return-void
.end method
