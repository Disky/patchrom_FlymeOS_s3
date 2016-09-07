.class public Lcom/android/extrasettings/floatwindow/AllAppsListActivity;
.super Landroid/app/Activity;
.source "AllAppsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mAppsInfosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mAppsInfosListView:Landroid/widget/ListView;

.field private static mFilterAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/v/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;


# instance fields
.field private mAllIntentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapterNull:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

.field private mSearchEditText:Lcom/v/common/SearchEditText;

.field private witchView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 26
    sput-object v0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    .line 28
    sput-object v0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 29
    sput-object v0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 25
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapterNull:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    .line 27
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->witchView:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/floatwindow/AllAppsListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/floatwindow/AllAppsListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 5
    .param p1, "filterStr"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 86
    :cond_0
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    sget-object v4, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->updateListView(Ljava/util/List;)V

    .line 87
    return-void

    .line 78
    :cond_1
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 79
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/v/common/AppInfo;

    .line 80
    .local v2, "sortModel":Lcom/v/common/AppInfo;
    invoke-virtual {v2}, Lcom/v/common/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 82
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "witch"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->witchView:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->witchView:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "appName":Ljava/lang/String;
    const v3, 0x7f0400eb

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->setContentView(I)V

    .line 40
    const v3, 0x7f1001fc

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 41
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    const v3, 0x7f1001fb

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/v/common/SearchEditText;

    iput-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 43
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    new-instance v4, Lcom/android/extrasettings/floatwindow/AllAppsListActivity$1;

    invoke-direct {v4, p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity$1;-><init>(Lcom/android/extrasettings/floatwindow/AllAppsListActivity;)V

    invoke-virtual {v3, v4}, Lcom/v/common/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    new-instance v3, Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapterNull:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    .line 62
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapterNull:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    invoke-virtual {v3}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->getDownLoadAppInfoList()Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 63
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 64
    new-instance v3, Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    sget-object v5, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V

    sput-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    .line 65
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/extrasettings/floatwindow/AppsListAdapter;->setDefaultApp(Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    sget-object v4, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mListAdapter:Lcom/android/extrasettings/floatwindow/AppsListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .line 91
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v3, "tanglei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemclick position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 95
    .local v0, "activityName":Ljava/lang/String;
    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "tanglei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    activityName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->witchView:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->finish()V

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 103
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
