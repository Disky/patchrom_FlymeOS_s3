.class public Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 174
    const v0, 0x7f100042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f100038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f1000a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f1001a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f100030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/extrasettings/applications/RunningState;Lcom/android/extrasettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    .locals 10
    .param p1, "state"    # Lcom/android/extrasettings/applications/RunningState;
    .param p2, "item"    # Lcom/android/extrasettings/applications/RunningState$BaseItem;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 184
    iget-object v6, p1, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 185
    :try_start_0
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 186
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v5, :cond_0

    instance-of v5, p2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    if-eqz v5, :cond_0

    .line 189
    move-object v0, p2

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object v3, v0

    .line 190
    .local v3, "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget-object v5, v3, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    .line 191
    move-object v0, p2

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    invoke-virtual {v5, v4}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 192
    move-object v0, p2

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 193
    move-object v0, p2

    check-cast v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 196
    .end local v3    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v2, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v2}, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 198
    .local v2, "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v5, v2, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 199
    iput-object p2, v2, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/extrasettings/applications/RunningState$BaseItem;

    .line 200
    iput-object p0, v2, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;

    .line 201
    iget-wide v8, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v8, v2, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 202
    iget-boolean v5, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v5, :cond_1

    .line 203
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0905f2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 208
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p2, v7, p1}, Lcom/android/extrasettings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/extrasettings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5, p3}, Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 211
    monitor-exit v6

    return-object v2

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/android/extrasettings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    .end local v2    # "ai":Lcom/android/extrasettings/applications/RunningProcessesView$ActiveItem;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
