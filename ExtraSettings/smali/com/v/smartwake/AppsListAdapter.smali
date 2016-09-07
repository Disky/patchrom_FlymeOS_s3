.class public Lcom/v/smartwake/AppsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v/smartwake/AppsListAdapter$ViewHolder;
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

.field private mGesture:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gesture"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    .line 45
    iput-object p1, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "gesture"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 28
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    .line 50
    iput-object p1, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/v/smartwake/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput p4, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    .line 54
    return-void
.end method

.method private isApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-string v3, "tanglei"

    const-string v4, "isApkExist = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "tanglei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apk not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

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

    .line 163
    iget-object v7, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 164
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 165
    .local v5, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v1, "appsInfosList":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v7, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 170
    .local v3, "mAllIntentApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 171
    new-instance v0, Lcom/v/common/AppInfo;

    invoke-direct {v0}, Lcom/v/common/AppInfo;-><init>()V

    .line 172
    .local v0, "appInfo":Lcom/v/common/AppInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppIcon(Ljava/lang/Object;)V

    .line 173
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 175
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 176
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/v/common/AppInfo;->setMainActivityName(Ljava/lang/String;)V

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "appInfo":Lcom/v/common/AppInfo;
    :cond_0
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "viewHolder":Lcom/v/smartwake/AppsListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/v/smartwake/AppsListAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/v/smartwake/AppsListAdapter$ViewHolder;-><init>(Lcom/v/smartwake/AppsListAdapter;)V

    .line 89
    .restart local v2    # "viewHolder":Lcom/v/smartwake/AppsListAdapter$ViewHolder;
    const v3, 0x7f1001f8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 90
    const v3, 0x7f1001f9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f1001fa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v4, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppIcon()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v4, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .local v0, "activityName":Ljava/lang/String;
    iget v3, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    if-nez v3, :cond_2

    .line 104
    const-string v3, "persist.sys.smartwake_c_name"

    const-string v4, "com.android.gallery3d&com.android.camera.CameraLauncher"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 105
    const-string v3, "persist.sys.smartwake_c_name"

    const-string v4, "com.android.gallery3d&com.android.camera.CameraLauncher"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    .line 124
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 126
    iget-object v3, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :goto_2
    return-object p2

    .line 95
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/v/smartwake/AppsListAdapter$ViewHolder;
    check-cast v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/v/smartwake/AppsListAdapter$ViewHolder;
    goto :goto_0

    .line 106
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    if-ne v3, v7, :cond_3

    .line 107
    const-string v3, "persist.sys.smartwake_e_name"

    const-string v4, "com.android.browser&com.android.browser.BrowserActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 108
    const-string v3, "persist.sys.smartwake_e_name"

    const-string v4, "com.android.browser&com.android.browser.BrowserActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    goto :goto_1

    .line 109
    :cond_3
    iget v3, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 110
    const-string v3, "persist.sys.smartwake_w_name"

    const-string v4, "com.mediatek.filemanager&com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 111
    const-string v3, "persist.sys.smartwake_w_name"

    const-string v4, "com.mediatek.filemanager&com.mediatek.filemanager.FileManagerOperationActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    goto :goto_1

    .line 112
    :cond_4
    iget v3, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 113
    iget-object v3, p0, Lcom/v/smartwake/AppsListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "com.android.music"

    invoke-direct {p0, v3, v4}, Lcom/v/smartwake/AppsListAdapter;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    const-string v3, "persist.sys.smartwake_m_name"

    const-string v4, "com.android.music&com.android.music.MusicBrowserActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 115
    const-string v3, "persist.sys.smartwake_m_name"

    const-string v4, "com.android.music&com.android.music.MusicBrowserActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    goto/16 :goto_1

    .line 117
    :cond_5
    const-string v3, "persist.sys.smartwake_m_name"

    const-string v4, "com.v5music&com.v5music.view.activity.SplashActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 118
    const-string v3, "persist.sys.smartwake_m_name"

    const-string v4, "com.v5music&com.v5music.view.activity.SplashActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    goto/16 :goto_1

    .line 120
    :cond_6
    iget v3, p0, Lcom/v/smartwake/AppsListAdapter;->mGesture:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 121
    const-string v3, "persist.sys.smartwake_o_name"

    const-string v4, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v6

    .line 122
    const-string v3, "persist.sys.smartwake_o_name"

    const-string v4, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    goto/16 :goto_1

    .line 128
    :cond_7
    iget-object v3, v2, Lcom/v/smartwake/AppsListAdapter$ViewHolder;->stateView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
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
    .line 140
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/v/common/AppInfo;>;"
    iput-object p1, p0, Lcom/v/smartwake/AppsListAdapter;->mAppsInfosList:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lcom/v/smartwake/AppsListAdapter;->notifyDataSetChanged()V

    .line 142
    return-void
.end method
