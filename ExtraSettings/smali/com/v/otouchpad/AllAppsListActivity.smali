.class public Lcom/v/otouchpad/AllAppsListActivity;
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

.field public static mListAdapter:Lcom/v/otouchpad/AppsListAdapter;


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

.field private mListAdapterNull:Lcom/v/otouchpad/AppsListAdapter;

.field private mSearchEditText:Lcom/v/common/SearchEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 32
    sput-object v0, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapter:Lcom/v/otouchpad/AppsListAdapter;

    .line 34
    sput-object v0, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 35
    sput-object v0, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/v/otouchpad/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 31
    iput-object v0, p0, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapterNull:Lcom/v/otouchpad/AppsListAdapter;

    .line 33
    iput-object v0, p0, Lcom/v/otouchpad/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object v0, p0, Lcom/v/otouchpad/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/v/otouchpad/AllAppsListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/v/otouchpad/AllAppsListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/v/otouchpad/AllAppsListActivity;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 5
    .param p1, "filterStr"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 86
    :cond_0
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapter:Lcom/v/otouchpad/AppsListAdapter;

    sget-object v4, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/v/otouchpad/AppsListAdapter;->updateListView(Ljava/util/List;)V

    .line 87
    return-void

    .line 78
    :cond_1
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 79
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

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
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f0400eb

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/AllAppsListActivity;->setContentView(I)V

    .line 42
    const v1, 0x7f1001fc

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 43
    sget-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    const v1, 0x7f1001fb

    invoke-virtual {p0, v1}, Lcom/v/otouchpad/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/v/common/SearchEditText;

    iput-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 45
    iget-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    new-instance v2, Lcom/v/otouchpad/AllAppsListActivity$1;

    invoke-direct {v2, p0}, Lcom/v/otouchpad/AllAppsListActivity$1;-><init>(Lcom/v/otouchpad/AllAppsListActivity;)V

    invoke-virtual {v1, v2}, Lcom/v/common/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    invoke-virtual {p0}, Lcom/v/otouchpad/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v1, Lcom/v/otouchpad/AppsListAdapter;

    invoke-virtual {p0}, Lcom/v/otouchpad/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/v/otouchpad/AppsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapterNull:Lcom/v/otouchpad/AppsListAdapter;

    .line 64
    iget-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapterNull:Lcom/v/otouchpad/AppsListAdapter;

    invoke-virtual {v1}, Lcom/v/otouchpad/AppsListAdapter;->getDownLoadAppInfoList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 65
    sget-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 66
    new-instance v1, Lcom/v/otouchpad/AppsListAdapter;

    invoke-virtual {p0}, Lcom/v/otouchpad/AllAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    iget-object v4, p0, Lcom/v/otouchpad/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v2, v3, v4}, Lcom/v/otouchpad/AppsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V

    sput-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapter:Lcom/v/otouchpad/AppsListAdapter;

    .line 67
    sget-object v1, Lcom/v/otouchpad/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    sget-object v2, Lcom/v/otouchpad/AllAppsListActivity;->mListAdapter:Lcom/v/otouchpad/AppsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/v/otouchpad/AllAppsListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/v/otouchpad/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const-string v3, "AllAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTouchpad itemclick position="

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
    iget-object v3, p0, Lcom/v/otouchpad/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/v/otouchpad/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/v/otouchpad/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 95
    .local v0, "activityName":Ljava/lang/String;
    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/v/otouchpad/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "AllAppsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTouchpad packageName="

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
    const-string v3, "persist.sys.otp_pkg"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "persist.sys.otp_act"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/v/otouchpad/AllAppsListActivity;->finish()V

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
