.class public Lcom/android/extrasettings/floatwindow/AppsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private defaultApp:Ljava/lang/String;

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

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 31
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

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

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

    .line 115
    iget-object v7, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 116
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v1, "appsInfosList":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v7, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "mAllIntentApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 123
    new-instance v0, Lcom/v/common/AppInfo;

    invoke-direct {v0}, Lcom/v/common/AppInfo;-><init>()V

    .line 124
    .local v0, "appInfo":Lcom/v/common/AppInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppIcon(Ljava/lang/Object;)V

    .line 125
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 127
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 128
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setMainActivityName(Ljava/lang/String;)V

    .line 129
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "appInfo":Lcom/v/common/AppInfo;
    :cond_0
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
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

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "viewHolder":Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;-><init>(Lcom/android/extrasettings/floatwindow/AppsListAdapter;)V

    .line 76
    .restart local v2    # "viewHolder":Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    const v3, 0x7f1001f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 77
    const v3, 0x7f1001f9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f1001fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v4, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppIcon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v4, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 90
    .local v0, "activityName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 92
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_1
    return-object p2

    .line 82
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    check-cast v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;
    goto :goto_0

    .line 98
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v3, v2, Lcom/android/extrasettings/floatwindow/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setDefaultApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->defaultApp:Ljava/lang/String;

    .line 53
    return-void
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
    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    iput-object p1, p0, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 111
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method
