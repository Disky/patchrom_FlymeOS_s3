.class Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/extrasettings/applications/ApplicationsState;

.field private final mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/applications/ApplicationsState;Lcom/android/extrasettings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/extrasettings/applications/ApplicationsState;
    .param p2, "tab"    # Lcom/android/extrasettings/applications/ManageApplications$TabInfo;
    .param p3, "filterMode"    # I

    .prologue
    .line 598
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 573
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 578
    new-instance v0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 599
    iput-object p1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    .line 600
    invoke-virtual {p1, p0}, Lcom/android/extrasettings/applications/ApplicationsState;->newSession(Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;)Lcom/android/extrasettings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    .line 601
    iput-object p2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    .line 602
    iget-object v0, p2, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/extrasettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 603
    iput p3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 604
    return-void
.end method

.method static synthetic access$500(Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/extrasettings/applications/ManageApplications$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
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
    .line 709
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 723
    :cond_1
    return-object v2

    .line 712
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/extrasettings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 717
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    .line 718
    .local v0, "entry":Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 720
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 809
    iget-object v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v3, p2}, Lcom/android/extrasettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/extrasettings/applications/AppViewHolder;

    move-result-object v1

    .line 810
    .local v1, "holder":Lcom/android/extrasettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/extrasettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 813
    iget-object v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    .line 814
    .local v0, "entry":Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 815
    :try_start_0
    iput-object v0, v1, Lcom/android/extrasettings/applications/AppViewHolder;->entry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    .line 816
    iget-object v3, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v3, v0}, Lcom/android/extrasettings/applications/ApplicationsState;->ensureIcon(Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;)V

    .line 820
    iget-object v3, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 821
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v3, v4}, Lcom/android/extrasettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 824
    iget-object v3, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 825
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f0905b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 833
    :goto_0
    iget v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 834
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 835
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 840
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 842
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    return-object p2

    .line 827
    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_4

    .line 828
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 829
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f0905b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 831
    :cond_4
    :try_start_2
    iget-object v3, v1, Lcom/android/extrasettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 838
    :cond_5
    iget-object v2, v1, Lcom/android/extrasettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 784
    iget v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 788
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 854
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 752
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/AppViewHolder;

    .line 764
    .local v0, "holder":Lcom/android/extrasettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/extrasettings/applications/AppViewHolder;->entry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    iget-object v3, v0, Lcom/android/extrasettings/applications/AppViewHolder;->entry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 766
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/extrasettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 767
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    iget-object v2, v0, Lcom/android/extrasettings/applications/AppViewHolder;->entry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/extrasettings/applications/ManageApplications;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/extrasettings/applications/ManageApplications;->access$1000(Lcom/android/extrasettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 774
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 776
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 780
    .end local v0    # "holder":Lcom/android/extrasettings/applications/AppViewHolder;
    :cond_1
    return-void

    .line 767
    .restart local v0    # "holder":Lcom/android/extrasettings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 762
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iput-boolean v3, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 743
    iput-object p1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 744
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 745
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 746
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 747
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/extrasettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 730
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 621
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->pause()V

    .line 623
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 630
    iget v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 633
    :cond_0
    iput p1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 641
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 642
    .local v1, "emulated":Z
    if-eqz v1, :cond_1

    .line 643
    iput v6, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 647
    :goto_0
    iget v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 661
    sget-object v3, Lcom/android/extrasettings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 664
    .local v3, "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 679
    sget-object v0, Lcom/android/extrasettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 682
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->rebuild(Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 684
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 705
    :goto_3
    return-void

    .line 645
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 649
    :pswitch_0
    sget-object v3, Lcom/android/extrasettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 650
    .restart local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 652
    .end local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/extrasettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 653
    .restart local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 654
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 658
    .end local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    :pswitch_2
    sget-object v3, Lcom/android/extrasettings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;

    .line 659
    .restart local v3    # "filterObj":Lcom/android/extrasettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 666
    :pswitch_3
    iget v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 674
    sget-object v0, Lcom/android/extrasettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 675
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 668
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/extrasettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 669
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 671
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_5
    sget-object v0, Lcom/android/extrasettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 672
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 688
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 689
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 690
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 694
    :goto_4
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 697
    if-nez v2, :cond_4

    .line 698
    iput-boolean v7, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 699
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 692
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 702
    :cond_4
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v4, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/extrasettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/extrasettings/applications/ManageApplications$TabInfo;->access$900(Lcom/android/extrasettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 664
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 666
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->release()V

    .line 627
    return-void
.end method

.method public resume(I)V
    .locals 2
    .param p1, "sort"    # I

    .prologue
    const/4 v1, 0x1

    .line 608
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 609
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 610
    iget-object v0, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->resume()V

    .line 611
    iput p1, p0, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 612
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 616
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
