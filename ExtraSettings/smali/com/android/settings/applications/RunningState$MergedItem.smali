.class Lcom/android/extrasettings/applications/RunningState$MergedItem;
.super Lcom/android/extrasettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/android/extrasettings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/extrasettings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 592
    iput v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 596
    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numProcesses"    # I
    .param p3, "numServices"    # I

    .prologue
    const/4 v5, 0x1

    .line 599
    iget v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v1, p3, :cond_2

    .line 600
    :cond_0
    iput p2, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 601
    iput p3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 602
    const v0, 0x7f0905fc

    .line 603
    .local v0, "resid":I
    if-eq p2, v5, :cond_4

    .line 604
    if-eq p3, v5, :cond_3

    const v0, 0x7f0905ff

    .line 610
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mDescription:Ljava/lang/String;

    .line 613
    .end local v0    # "resid":I
    :cond_2
    return-void

    .line 604
    .restart local v0    # "resid":I
    :cond_3
    const v0, 0x7f0905fe

    goto :goto_0

    .line 607
    :cond_4
    if-eq p3, v5, :cond_1

    .line 608
    const v0, 0x7f0905fd

    goto :goto_0
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/extrasettings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/android/extrasettings/applications/RunningState;

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    if-nez v1, :cond_0

    .line 693
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/extrasettings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 703
    :goto_0
    return-object v1

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 697
    .local v0, "constState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/extrasettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 703
    .end local v0    # "constState":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    const v1, 0x10803d2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method update(Landroid/content/Context;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "background"    # Z

    .prologue
    .line 616
    iput-boolean p2, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mBackground:Z

    .line 618
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    if-eqz v6, :cond_4

    .line 624
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 625
    .local v1, "child0":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget-object v6, v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 626
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iget-object v6, v6, Lcom/android/extrasettings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 627
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 628
    const/4 v3, 0x0

    .line 629
    .local v3, "numProcesses":I
    const/4 v4, 0x0

    .line 630
    .local v4, "numServices":I
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 631
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 632
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 633
    .local v0, "child":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget v6, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v3, v6

    .line 634
    iget v6, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v4, v6

    .line 635
    iget-wide v6, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 636
    iget-wide v6, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 631
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "child":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v2    # "i":I
    .end local v3    # "numProcesses":I
    .end local v4    # "numServices":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 639
    .restart local v2    # "i":I
    .restart local v3    # "numProcesses":I
    .restart local v4    # "numServices":I
    :cond_2
    iget-boolean v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v6, :cond_3

    .line 640
    invoke-direct {p0, p1, v3, v4}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 661
    .end local v1    # "child0":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v3    # "numProcesses":I
    .end local v4    # "numServices":I
    :cond_3
    const/4 v6, 0x0

    return v6

    .line 643
    .end local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 644
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 645
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 647
    iget-boolean v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v6, :cond_5

    .line 648
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget v6, v6, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 652
    :cond_5
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 653
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 654
    iget-object v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 655
    .local v5, "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    iget-wide v6, v5, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    iget-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v5, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 656
    iget-wide v6, v5, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mActiveSince:J

    .line 653
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 648
    .end local v2    # "i":I
    .end local v5    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 665
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    if-eqz v3, :cond_0

    .line 666
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    .line 667
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 668
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 669
    .local v0, "child":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    invoke-virtual {v0, p1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 670
    iget-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    iget-wide v6, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "child":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-wide v4, v3, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mSize:J

    iput-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    .line 674
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 675
    iget-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-wide v6, v3, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 679
    :cond_1
    iget-wide v4, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSize:J

    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "sizeStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 682
    iput-object v2, p0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    .line 688
    :cond_2
    return v8
.end method
