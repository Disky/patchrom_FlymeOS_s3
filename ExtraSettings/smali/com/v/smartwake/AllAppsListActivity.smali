.class public Lcom/v/smartwake/AllAppsListActivity;
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

.field private static mGesture:I

.field public static mListAdapter:Lcom/v/smartwake/AppsListAdapter;


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

.field private mListAdapterNull:Lcom/v/smartwake/AppsListAdapter;

.field private mSearchEditText:Lcom/v/common/SearchEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 28
    sput-object v0, Lcom/v/smartwake/AllAppsListActivity;->mListAdapter:Lcom/v/smartwake/AppsListAdapter;

    .line 30
    sput-object v0, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 31
    sput-object v0, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/v/smartwake/AllAppsListActivity;->mGesture:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/v/smartwake/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 27
    iput-object v0, p0, Lcom/v/smartwake/AllAppsListActivity;->mListAdapterNull:Lcom/v/smartwake/AppsListAdapter;

    .line 29
    iput-object v0, p0, Lcom/v/smartwake/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/v/smartwake/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/v/smartwake/AllAppsListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/v/smartwake/AllAppsListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/v/smartwake/AllAppsListActivity;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 5
    .param p1, "filterStr"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 85
    :cond_0
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mListAdapter:Lcom/v/smartwake/AppsListAdapter;

    sget-object v4, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/v/smartwake/AppsListAdapter;->updateListView(Ljava/util/List;)V

    .line 86
    return-void

    .line 77
    :cond_1
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 78
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

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

    .line 79
    .local v2, "sortModel":Lcom/v/common/AppInfo;
    invoke-virtual {v2}, Lcom/v/common/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 80
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

    .line 81
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "gesture"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/v/smartwake/AllAppsListActivity;->mGesture:I

    .line 40
    const v2, 0x7f04010c

    invoke-virtual {p0, v2}, Lcom/v/smartwake/AllAppsListActivity;->setContentView(I)V

    .line 41
    const v2, 0x7f10026b

    invoke-virtual {p0, v2}, Lcom/v/smartwake/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    .line 42
    sget-object v2, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    const v2, 0x7f10026a

    invoke-virtual {p0, v2}, Lcom/v/smartwake/AllAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/v/common/SearchEditText;

    iput-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    .line 44
    iget-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mSearchEditText:Lcom/v/common/SearchEditText;

    new-instance v3, Lcom/v/smartwake/AllAppsListActivity$1;

    invoke-direct {v3, p0}, Lcom/v/smartwake/AllAppsListActivity$1;-><init>(Lcom/v/smartwake/AllAppsListActivity;)V

    invoke-virtual {v2, v3}, Lcom/v/common/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    new-instance v2, Lcom/v/smartwake/AppsListAdapter;

    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/v/smartwake/AllAppsListActivity;->mGesture:I

    invoke-direct {v2, v3, v4}, Lcom/v/smartwake/AppsListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mListAdapterNull:Lcom/v/smartwake/AppsListAdapter;

    .line 63
    iget-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mListAdapterNull:Lcom/v/smartwake/AppsListAdapter;

    invoke-virtual {v2}, Lcom/v/smartwake/AppsListAdapter;->getDownLoadAppInfoList()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    .line 64
    sget-object v2, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    sput-object v2, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    .line 65
    new-instance v2, Lcom/v/smartwake/AppsListAdapter;

    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget-object v4, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosList:Ljava/util/List;

    iget-object v5, p0, Lcom/v/smartwake/AllAppsListActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/v/smartwake/AllAppsListActivity;->mGesture:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/v/smartwake/AppsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;I)V

    sput-object v2, Lcom/v/smartwake/AllAppsListActivity;->mListAdapter:Lcom/v/smartwake/AppsListAdapter;

    .line 66
    sget-object v2, Lcom/v/smartwake/AllAppsListActivity;->mAppsInfosListView:Landroid/widget/ListView;

    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mListAdapter:Lcom/v/smartwake/AppsListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/v/smartwake/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    .line 70
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
    .line 90
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

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/v/smartwake/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/v/smartwake/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/v/smartwake/AllAppsListActivity;->mAllIntentApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 94
    .local v0, "activityName":Ljava/lang/String;
    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/v/smartwake/AllAppsListActivity;->mFilterAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/v/common/AppInfo;

    invoke-virtual {v3}, Lcom/v/common/AppInfo;->getMainActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
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

    .line 97
    sget v3, Lcom/v/smartwake/AllAppsListActivity;->mGesture:I

    packed-switch v3, :pswitch_data_0

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/v/smartwake/AllAppsListActivity;->finish()V

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :pswitch_0
    const-string v3, "persist.sys.smartwake_c_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :pswitch_1
    const-string v3, "persist.sys.smartwake_e_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_2
    const-string v3, "persist.sys.smartwake_w_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :pswitch_3
    const-string v3, "persist.sys.smartwake_m_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :pswitch_4
    const-string v3, "persist.sys.smartwake_o_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-void

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
