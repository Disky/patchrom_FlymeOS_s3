.class Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/extrasettings/applications/RunningState;

.field final synthetic this$0:Lcom/android/extrasettings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/RunningProcessesView;Lcom/android/extrasettings/applications/RunningState;)V
    .locals 2
    .param p2, "state"    # Lcom/android/extrasettings/applications/RunningState;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/extrasettings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 231
    iput-object p2, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    .line 232
    invoke-virtual {p1}, Lcom/android/extrasettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 234
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 235
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v4, v3, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 321
    :try_start_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 325
    monitor-exit v4

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    .line 328
    .local v2, "vh":Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 329
    .local v1, "item":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/extrasettings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/extrasettings/applications/RunningState;Lcom/android/extrasettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 330
    .local v0, "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/extrasettings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/extrasettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit v4

    goto :goto_0

    .end local v0    # "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    .end local v1    # "item":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v2    # "vh":Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 304
    if-nez p2, :cond_0

    .line 305
    invoke-virtual {p0, p3}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 310
    return-object v0

    .line 307
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 299
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mIsProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ba

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 316
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/extrasettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    .local v0, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 255
    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 256
    if-nez v0, :cond_2

    .line 257
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    :cond_0
    :goto_1
    return-void

    .line 251
    .end local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/extrasettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 259
    .restart local v0    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-boolean v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/extrasettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 2
    .param p1, "showBackground"    # Z

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 239
    iput-boolean p1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 240
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/extrasettings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 242
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/extrasettings/applications/RunningProcessesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 244
    :cond_0
    return-void
.end method
