.class public Lcom/v/otouchpad/AppsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppsInfosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p1, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/v/otouchpad/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDownLoadAppInfoList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 103
    iget-object v7, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 104
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 105
    .local v5, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v1, "appsInfosList":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v7, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, "mAllIntentApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 111
    new-instance v0, Lcom/v/common/AppInfo;

    invoke-direct {v0}, Lcom/v/common/AppInfo;-><init>()V

    .line 112
    .local v0, "appInfo":Lcom/v/common/AppInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppIcon(Ljava/lang/Object;)V

    .line 113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/v/otouchpad/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 116
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setMainActivityName(Ljava/lang/String;)V

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "appInfo":Lcom/v/common/AppInfo;
    :cond_0
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "viewHolder":Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/v/otouchpad/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;-><init>(Lcom/v/otouchpad/AppsListAdapter;)V

    .line 65
    .restart local v2    # "viewHolder":Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    const v3, 0x7f1001f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 66
    const v3, 0x7f1001f9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    .line 67
    const v3, 0x7f1001fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v4, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppIcon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v4, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v3, "persist.sys.otp_pkg"

    const-string v4, "persist.sys.otp_def_pkg_act"

    const-string v5, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "persist.sys.otp_act"

    const-string v4, "persist.sys.otp_def_pkg_act"

    const-string v5, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "activityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_1
    return-object p2

    .line 71
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    check-cast v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/v/otouchpad/AppsListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 85
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v3, v2, Lcom/v/otouchpad/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    iput-object p1, p0, Lcom/v/otouchpad/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 98
    invoke-virtual {p0}, Lcom/v/otouchpad/AppsListAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
