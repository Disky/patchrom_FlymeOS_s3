.class public Lcom/android/extrasettings/DataUsageSummary;
.super Lcom/android/extrasettings/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/extrasettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/extrasettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/extrasettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/extrasettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/extrasettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/extrasettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/extrasettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/extrasettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/extrasettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/extrasettings/DataUsageSummary$AppItem;,
        Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/extrasettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final CURRENT_TAB:Ljava/lang/String; = "current_tab"

.field private static final DATA_USAGE_CYCLE_KEY:Ljava/lang/String; = "data_usage_cycle"

.field private static final DATA_USAGE_DISABLE_MOBILE_LIMIT_KEY:Ljava/lang/String; = "data_usage_disable_mobile_limit"

.field private static final DATA_USAGE_ENABLE_MOBILE_KEY:Ljava/lang/String; = "data_usage_enable_mobile"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = true

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_OVERVIEW_TAB:Z = true

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_OVERVIEW:Ljava/lang/String; = "Overview"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_BG_DATA_APP_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataDialogMessage"

.field private static final TAG_BG_DATA_APP_DIALOG_TITLE:Ljava/lang/String; = "bgDataDialogTitle"

.field private static final TAG_BG_DATA_MENU_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataMenuDialogMessage"

.field private static final TAG_BG_DATA_RESTRICT_DENY_MESSAGE:Ljava/lang/String; = "bgDataRestrictDenyMessage"

.field private static final TAG_BG_DATA_SUMMARY:Ljava/lang/String; = "bgDataSummary"

.field private static final TAG_BG_DATA_SWITCH:Ljava/lang/String; = "bgDataSwitch"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/extrasettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/extrasettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/extrasettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDetailedSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentTab:Ljava/lang/String;

.field protected mIsAirplaneModeOn:Z

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOverViewExpList:Landroid/widget/ExpandableListView;

.field private mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

.field private mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1635
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/extrasettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1636
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/extrasettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/extrasettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2789
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$15;

    invoke-direct {v0}, Lcom/android/extrasettings/DataUsageSummary$15;-><init>()V

    sput-object v0, Lcom/android/extrasettings/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/HighlightingFragment;-><init>()V

    .line 233
    iput v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    .line 268
    iput-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    .line 269
    iput-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    .line 274
    iput-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    .line 280
    iput-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 281
    iput-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    .line 766
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$3;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 795
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$4;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1266
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$6;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1356
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$8;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1370
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$9;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1386
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$10;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1400
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$11;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1500
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$12;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1532
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$13;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1575
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$14;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartListener:Lcom/android/extrasettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2977
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$16;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/DataUsageSummary;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$1200()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->disableDataForOtherSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/extrasettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/extrasettings/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/net/ChartData;)Lcom/android/extrasettings/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/extrasettings/net/ChartData;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/extrasettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mAdapter:Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->handleRadioStatus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/extrasettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/extrasettings/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/extrasettings/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$3400(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/extrasettings/DataUsageSummary;Lcom/android/extrasettings/DataUsageSummary$AppItem;)Lcom/android/extrasettings/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/extrasettings/DataUsageSummary$AppItem;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/extrasettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/extrasettings/DataUsageSummary;)Lcom/android/extrasettings/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/DataUsageSummary;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->handleMultiSimDataDialog()V

    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    .line 2829
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2830
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2831
    if-eqz p3, :cond_1

    .line 2832
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2842
    :cond_0
    :goto_0
    return-void

    .line 2835
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0908cb

    invoke-direct {p0, v0, v2}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 2840
    :cond_2
    const-string v0, "DataUsage"

    const-string v1, "addMobileTab: subInfoList is null"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 703
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 707
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 708
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2723
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2725
    .local v1, "limited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2726
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 2727
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2728
    .local v2, "subscriberId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2729
    const v4, 0x7f0908ce

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2732
    const v4, 0x7f0908cd

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2735
    const v4, 0x7f0908cc

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    .end local v2    # "subscriberId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2740
    const v4, 0x7f0908c9

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2743
    const v4, 0x7f0908ca

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    :cond_4
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2704
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 2707
    .local v0, "limited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2708
    const v1, 0x7f0908cf

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2711
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/extrasettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 791
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpecEx(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpecEx(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 3055
    .local v3, "tab":Landroid/widget/TabHost$TabSpec;
    sget-object v0, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 3056
    .local v6, "newTab":Landroid/widget/TabHost$TabSpec;
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 3057
    return-object v6
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2472
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 2473
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 2474
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2476
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2492
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    .line 2482
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2488
    :pswitch_0
    const-string v2, "mobile"

    goto :goto_0

    .line 2484
    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    .line 2486
    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    .line 2490
    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    .line 2482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private disableDataForOtherSubscriptions(Landroid/telephony/SubscriptionInfo;)V
    .locals 4
    .param p1, "currentSir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 1257
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1258
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1259
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1260
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    goto :goto_0

    .line 1264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 693
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 694
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 696
    invoke-static {}, Lcom/android/extrasettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 697
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 698
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 699
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1640
    const v8, 0x10010

    .line 1642
    .local v8, "flags":I
    sget-object v9, Lcom/android/extrasettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1643
    :try_start_0
    sget-object v0, Lcom/android/extrasettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1644
    sget-object v1, Lcom/android/extrasettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1561
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1562
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1564
    .local v1, "retVal":Ljava/lang/String;
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " actualSubscriberId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1569
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1570
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, "retVal":Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSubscriberId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/extrasettings/DataUsageSummary$AppItem;->key:I

    .line 1123
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1124
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2845
    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_1

    .line 2846
    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2847
    .local v0, "currentTagIndex":I
    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentTabSubInfo... currentTagIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    const/4 v1, 0x1

    .line 2850
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2851
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2852
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-ne v1, v0, :cond_2

    .line 2858
    .end local v0    # "currentTagIndex":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v0    # "currentTagIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2884
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2885
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2886
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2887
    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2888
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2893
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 2892
    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleMultiSimDataDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1306
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1307
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1310
    .local v2, "currentSir":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_0

    .line 1311
    const-string v5, "DataUsage"

    const-string v6, "handleMultiSimDataDialog()... currentSir is null "

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :goto_0
    return-void

    .line 1315
    :cond_0
    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 1320
    .local v3, "nextSir":Landroid/telephony/SubscriptionInfo;
    invoke-static {v1}, Lcom/android/extrasettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1323
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5, v10}, Lcom/android/extrasettings/DataUsageSummary;->setMobileDataEnabled(IZ)V

    .line 1324
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1326
    invoke-direct {p0, v2}, Lcom/android/extrasettings/DataUsageSummary;->disableDataForOtherSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    .line 1328
    :cond_2
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateBody()V

    goto :goto_0

    .line 1332
    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0909ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, "previousName":Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1338
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090aba

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1339
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090abb

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v4, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1342
    const v5, 0x7f09024e

    new-instance v6, Lcom/android/extrasettings/DataUsageSummary$7;

    invoke-direct {v6, p0, v2}, Lcom/android/extrasettings/DataUsageSummary$7;-><init>(Lcom/android/extrasettings/DataUsageSummary;Landroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    const v5, 0x7f09024b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1332
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "previousName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleRadioStatus()V
    .locals 5

    .prologue
    .line 2962
    const-string v2, "DataUsage"

    const-string v3, "unLockSim()"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    if-eqz v2, :cond_0

    .line 2964
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 2965
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2967
    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    .line 2968
    .local v0, "subId":I
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/settings/deviceinfo/UnLockSubDialog;->showDialog(Landroid/app/Activity;I)V

    .line 2971
    .end local v0    # "subId":I
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2695
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2616
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2565
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2566
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2568
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 2571
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 2572
    const-string v7, "DataUsage"

    const-string v8, "hasReadyMobileRadio: subInfoList=null"

    invoke-static {v7, v8}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    :goto_0
    return v9

    .line 2576
    :cond_0
    const/4 v2, 0x1

    .line 2577
    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2578
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_2
    and-int/2addr v2, v7

    .line 2579
    const-string v7, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasReadyMobileRadio: subInfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v7, v9

    .line 2578
    goto :goto_2

    .line 2581
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    move v3, v8

    .line 2583
    .local v3, "retVal":Z
    :goto_3
    const-string v7, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasReadyMobileRadio: conn.isNetworkSupported(TYPE_MOBILE)="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isReady="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v3

    .line 2588
    goto :goto_0

    .end local v3    # "retVal":Z
    :cond_3
    move v3, v9

    .line 2581
    goto :goto_3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2599
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2600
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2601
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 2602
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .line 2604
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .line 2605
    .local v2, "retVal":Z
    :goto_1
    const-string v5, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasReadyMobileRadio: subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conn.isNetworkSupported(TYPE_MOBILE)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    .line 2602
    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    .line 2604
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2639
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2640
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 2684
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2687
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2688
    .local v1, "resId":I
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2676
    const v2, 0x7f040088

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2677
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2679
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2680
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 3011
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    .line 3012
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3015
    new-instance v0, Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/datausage/OverViewTabAdapter;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    .line 3017
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v0

    sput-object v0, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 3019
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->newInstance(Landroid/app/Activity;)Lcom/mediatek/settings/sim/SimHotSwapHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 3020
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mIsAirplaneModeOn:Z

    .line 3021
    return-void
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2867
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 2868
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2870
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2871
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2872
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2873
    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2876
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2754
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2755
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2759
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2760
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2761
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2763
    new-instance v3, Lcom/android/extrasettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/extrasettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2764
    new-instance v3, Lcom/android/extrasettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/extrasettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2765
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 926
    const-string v3, "DataUsage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentApp is null ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 926
    goto :goto_0

    :cond_1
    move v1, v2

    .line 927
    goto :goto_1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1109
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1112
    :goto_0
    return v1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataAvailable(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2898
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2899
    .local v0, "subIds":[I
    if-eqz v0, :cond_1

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return v1

    .line 2903
    :cond_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2904
    if-eqz v0, :cond_2

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    .line 2908
    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2909
    if-eqz v0, :cond_3

    aget v3, v0, v2

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 2912
    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1065
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled:+ subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1072
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled: != null, subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :goto_0
    return v0

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1084
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled: == null, subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2880
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 5
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1099
    const-string v3, "DataUsage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy isn\'t null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", bandWidthControl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", isChecked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", currentUser: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1099
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1103
    goto :goto_1
.end method

.method private onCreateViewEx(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3030
    const v0, 0x7f10008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    .line 3032
    const-string v0, "DataUsage"

    const-string v1, "mOverViewExpList.addHeaderView"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3034
    const-string v0, "DataUsage"

    const-string v1, "mOverViewExpList.setAdapter"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 3037
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 3039
    return-void
.end method

.method private onResumeEx()V
    .locals 3

    .prologue
    .line 3042
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3043
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSubscriptionsChangedListener()V

    .line 3046
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    if-eqz v0, :cond_0

    .line 3047
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v0}, Lcom/mediatek/datausage/OverViewTabAdapter;->bindOperaMaxLoader()V

    .line 3049
    :cond_0
    const-string v0, "DataUsage"

    const-string v1, "onResume()... End"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    return-void
.end method

.method private restoreSavedTab(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 3002
    if-eqz p1, :cond_1

    const-string v1, "current_tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3004
    .local v0, "savedTab":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 3005
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSavedTab savedTab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    iput-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 3008
    :cond_0
    return-void

    .line 3002
    .end local v0    # "savedTab":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1128
    const-string v1, "DataUsage"

    const-string v2, "setAppRestrictBackground()"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/extrasettings/DataUsageSummary$AppItem;->key:I

    .line 1130
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1132
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1133
    return-void

    .line 1130
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1092
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1094
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1096
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 5
    .param p1, "limitBytes"    # J

    .prologue
    .line 1053
    const-string v1, "DataUsage"

    const-string v2, "setPolicyLimitBytes()"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    .line 1056
    .local v0, "rule":I
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1060
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1062
    :cond_0
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 1047
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1049
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/DataUsageSummary;->updatePolicy(Z)V

    .line 1050
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2781
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2782
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2783
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2784
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2772
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2773
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2774
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3079
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3080
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3081
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 936
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 937
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 939
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/extrasettings/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 956
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/extrasettings/net/UidDetail;

    move-result-object v7

    .line 957
    .local v7, "detail":Lcom/android/extrasettings/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 961
    const/16 v18, 0x0

    .line 962
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 963
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 964
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 965
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 966
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 967
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f04003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 968
    const v20, 0x7f100072

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 969
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 964
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 943
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/extrasettings/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1044
    :goto_1
    return-void

    .line 974
    .restart local v7    # "detail":Lcom/android/extrasettings/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f04003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 975
    const v20, 0x7f100072

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 976
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v0, v7, Lcom/android/extrasettings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 982
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 983
    const v20, 0x7f100073

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 989
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 990
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 991
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const/4 v13, 0x0

    .line 996
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 997
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 999
    const/4 v13, 0x1

    .line 1004
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/extrasettings/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary$5;-><init>(Lcom/android/extrasettings/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 1025
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->updateDetailData()V

    .line 1027
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->updateAppDetailEx()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 985
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 996
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1020
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 1042
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateAppDetailEx()V
    .locals 5

    .prologue
    .line 3084
    sget-object v2, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v3, 0x7f0908d6

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bgDataSwitch"

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3086
    .local v1, "appBgDataTitle":Ljava/lang/String;
    sget-object v2, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v3, 0x7f0908d7

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bgDataSummary"

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3089
    .local v0, "appBgDataSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-static {v2, v1}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 3090
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 3091
    return-void
.end method

.method private updateBody()V
    .locals 14

    .prologue
    const/high16 v13, -0x1000000

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 813
    iput-boolean v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z

    .line 814
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 817
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 818
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-nez v10, :cond_2

    move v2, v8

    .line 821
    .local v2, "isOwner":Z
    :goto_1
    if-nez v1, :cond_3

    .line 822
    const-string v8, "DataUsage"

    const-string v9, "no tab selected; hiding body"

    invoke-static {v8, v9}, Lcom/mediatek/settings/sim/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "isOwner":Z
    :cond_2
    move v2, v9

    .line 819
    goto :goto_1

    .line 831
    .restart local v2    # "isOwner":Z
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->updateBodyEx(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 837
    iput-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 839
    const-string v10, "DataUsage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateBody() with currentTab="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iput-boolean v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 842
    iput-boolean v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 846
    const-string v8, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateBody() isMobileTab="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 849
    const-string v8, "DataUsage"

    const-string v10, "updateBody() mobile tab"

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v10, 0x7f0908d0

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 851
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f0908c5

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 852
    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v8

    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/extrasettings/DataUsageSummary;->isMobileDataAvailable(J)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 856
    invoke-direct {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/android/extrasettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 858
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 894
    :goto_2
    const-string v8, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDataEnabledSupported: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDisableAtLimitSupported"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v12, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentApp:Lcom/android/extrasettings/DataUsageSummary$AppItem;

    invoke-static {v11, v12}, Lcom/android/extrasettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/extrasettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v11

    iget-object v12, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v8, v10, v11, v12}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 903
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 905
    iput-boolean v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z

    .line 907
    const v8, 0x7f08003d

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 908
    .local v5, "seriesColor":I
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "mobile"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 909
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v9, "mobile"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 911
    .local v7, "slotId":I
    invoke-static {v0, v7}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 914
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v6, :cond_4

    .line 915
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    .line 919
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "slotId":I
    :cond_4
    const/16 v8, 0x7f

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 921
    .local v4, "secondaryColor":I
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8, v13, v5, v4}, Lcom/android/extrasettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 922
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDetailedSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8, v13, v5, v4}, Lcom/android/extrasettings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .line 861
    .end local v4    # "secondaryColor":I
    .end local v5    # "seriesColor":I
    :cond_5
    const-string v8, "3g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 862
    const-string v8, "DataUsage"

    const-string v10, "updateBody() 3g tab"

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v10, 0x7f0908d1

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 864
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f0908c7

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 866
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 868
    :cond_6
    const-string v8, "4g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 869
    const-string v8, "DataUsage"

    const-string v10, "updateBody() 4g tab"

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v10, 0x7f0908d2

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 871
    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v10, 0x7f0908c6

    invoke-static {v8, v10}, Lcom/android/extrasettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 873
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 875
    :cond_7
    const-string v8, "wifi"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 877
    const-string v8, "DataUsage"

    const-string v10, "updateBody() wifi tab"

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iput-boolean v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 879
    iput-boolean v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 880
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 882
    :cond_8
    const-string v8, "ethernet"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 884
    const-string v8, "DataUsage"

    const-string v10, "updateBody() ethernet tab"

    invoke-static {v8, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iput-boolean v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 886
    iput-boolean v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 887
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 890
    :cond_9
    const-string v8, "DataUsage"

    const-string v9, "updateBody() unknown tab"

    invoke-static {v8, v9}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown tab: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private updateBodyEx(Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 3061
    const-string v1, "Overview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3062
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3063
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 3064
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v0}, Lcom/mediatek/datausage/OverViewTabAdapter;->updateAdapter()V

    .line 3065
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v0}, Lcom/mediatek/datausage/OverViewTabAdapter;->notifyDataSetChanged()V

    .line 3067
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3068
    const/4 v0, 0x1

    .line 3075
    :goto_0
    return v0

    .line 3071
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 3073
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/extrasettings/DataUsageSummary$CycleItem;

    .line 1191
    .local v17, "previousItem":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1195
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1196
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1197
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    if-eqz v4, :cond_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v4, v4, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v4, v4, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1202
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1203
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1204
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1206
    :cond_2
    const/16 v16, 0x0

    .line 1207
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1209
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1212
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1213
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1214
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/extrasettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/extrasettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1217
    move-wide v8, v6

    .line 1218
    const/16 v16, 0x1

    .line 1219
    goto :goto_0

    .line 1222
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/extrasettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1225
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1227
    move-wide/from16 v8, v18

    .line 1228
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1229
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1230
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/extrasettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/extrasettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1231
    move-wide v8, v6

    .line 1232
    goto :goto_1

    .line 1234
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1238
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/extrasettings/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 1240
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/extrasettings/DataUsageSummary$CycleItem;

    .line 1245
    .local v24, "selectedItem":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1254
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1249
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1252
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/extrasettings/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1439
    const-string v3, "DataUsage"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/extrasettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1442
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/extrasettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1443
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1445
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1447
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1448
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v3, v3, Lcom/android/extrasettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_2

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v3, v3, Lcom/android/extrasettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1451
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1452
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v3, v3, Lcom/android/extrasettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1453
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1454
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1456
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v11, v3, Lcom/android/extrasettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1481
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1482
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1483
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1487
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1498
    return-void

    .line 1470
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    if-eqz v3, :cond_3

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mChartData:Lcom/android/extrasettings/net/ChartData;

    iget-object v11, v3, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1474
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/extrasettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/extrasettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1481
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_1

    .line 1490
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1493
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0908b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 608
    :goto_0
    iget-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0908b4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 614
    :goto_1
    iget-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0908b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 619
    :goto_2
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    sget-object v1, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v2, 0x7f0908d6

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bgDataSwitch"

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0908b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0908b5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1140
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePolicy()..., mDataEnabledSupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDisableAtLimitSupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-boolean v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1143
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1145
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1146
    const/4 v0, 0x0

    .line 1147
    const/4 v1, 0x0

    .line 1151
    :cond_0
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/extrasettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1152
    iput-boolean v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z

    .line 1153
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/extrasettings/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1154
    iput-boolean v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mBinding:Z

    .line 1157
    :cond_1
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1159
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/extrasettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/extrasettings/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, v6, v7}, Lcom/android/extrasettings/DataUsageSummary;->isMobileDataAvailable(J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1160
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1161
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1162
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1171
    :cond_2
    :goto_1
    const-string v3, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePolicy(), dataEnabledVisible: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,disableAtLimitVisible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    if-eqz p1, :cond_3

    .line 1179
    invoke-direct {p0, v2}, Lcom/android/extrasettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1181
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 1160
    goto :goto_0

    .line 1167
    :cond_5
    const/4 v1, 0x0

    .line 1168
    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1174
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1175
    goto :goto_3
.end method

.method private updateTabs()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 717
    const-string v6, "DataUsage"

    const-string v9, "updateTabs()"

    invoke-static {v6, v9}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 719
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 722
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "Overview"

    const v10, 0x7f090137

    invoke-direct {p0, v9, v10}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 723
    const-string v6, "DataUsage"

    const-string v9, "Add OVERVIEW TAB"

    invoke-static {v6, v9}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 728
    .local v4, "simCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 729
    invoke-static {v0, v1}, Lcom/android/extrasettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 730
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_0

    .line 731
    if-le v4, v7, :cond_1

    move v6, v7

    :goto_1
    invoke-direct {p0, v0, v5, v6}, Lcom/android/extrasettings/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    .line 728
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    .line 731
    goto :goto_1

    .line 735
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_2
    iget-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 736
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "wifi"

    const v10, 0x7f0908c9

    invoke-direct {p0, v9, v10}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 739
    :cond_3
    iget-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 740
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v9, "ethernet"

    const v10, 0x7f0908ca

    invoke-direct {p0, v9, v10}, Lcom/android/extrasettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 743
    :cond_4
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_6

    move v3, v7

    .line 744
    .local v3, "noTabs":Z
    :goto_2
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v7, :cond_7

    move v2, v7

    .line 745
    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 746
    const-string v6, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIntentTab: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentTab: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 748
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 750
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateBody()V

    .line 754
    :goto_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 761
    :cond_5
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_6
    move v3, v8

    .line 743
    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_7
    move v2, v8

    .line 744
    goto :goto_3

    .line 745
    .restart local v2    # "multipleTabs":Z
    :cond_8
    const/16 v8, 0x8

    goto :goto_4

    .line 752
    :cond_9
    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 755
    :cond_a
    if-eqz v3, :cond_5

    .line 757
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2651
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2652
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2655
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2668
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2660
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2661
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2664
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2668
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    invoke-super {p0, p1}, Lcom/android/extrasettings/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 307
    .local v0, "context":Landroid/content/Context;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 309
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 311
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 312
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 313
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 315
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 317
    new-instance v2, Lcom/android/extrasettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/extrasettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    .line 318
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->read()V

    .line 320
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 321
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/extrasettings/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 343
    :goto_1
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    .line 344
    iget-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    .line 347
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    iput-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    .line 349
    iput-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->init()V

    .line 355
    invoke-virtual {p0, v6}, Lcom/android/extrasettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 356
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 336
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 337
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception happen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , so finish current activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 536
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 537
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f04004e

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 365
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/android/extrasettings/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/extrasettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    .line 367
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 368
    const v4, 0x7f10008c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 369
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 370
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 374
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v5, 0x2000000

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 376
    .local v1, "shouldInset":Z
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    .line 379
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-static {p2, v3, v4, v5}, Lcom/android/extrasettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 381
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 382
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 384
    const v4, 0x7f04004c

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 385
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 387
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 388
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 389
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 392
    invoke-direct {p0, v0, v3}, Lcom/android/extrasettings/DataUsageSummary;->onCreateViewEx(Landroid/content/Context;Landroid/view/View;)V

    .line 395
    iget v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v5}, Lcom/android/extrasettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 398
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f100088

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 405
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f100089

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 407
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 408
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 409
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 410
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v5}, Lcom/android/extrasettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 411
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/high16 v5, 0x7f100000

    const-string v6, "data_usage_enable_mobile"

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 413
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 414
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 415
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    sget-object v4, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/view/View$OnClickListener;)Z

    .line 420
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 423
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 425
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v5}, Lcom/android/extrasettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 426
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/high16 v5, 0x7f100000

    const-string v6, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 428
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 429
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 430
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    const v4, 0x7f040043

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 434
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const/high16 v5, 0x7f100000

    const-string v6, "data_usage_cycle"

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 435
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v5, 0x7f10007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 436
    new-instance v4, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    .line 437
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleAdapter:Lcom/android/extrasettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 438
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 439
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v5, 0x7f10007c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 440
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    const v4, 0x7f100076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    .line 442
    const v4, 0x7f100077

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDetailedSeries:Lcom/android/extrasettings/widget/ChartNetworkSeriesView;

    .line 445
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f100074

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    .line 446
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mChartListener:Lcom/android/extrasettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/widget/ChartDataUsageView;->setListener(Lcom/android/extrasettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mChart:Lcom/android/extrasettings/widget/ChartDataUsageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/extrasettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 451
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f10007d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 452
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f100010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 453
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f10007e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 454
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f10007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 455
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f100080

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 456
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f100081

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 458
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v5, 0x7f100012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 460
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 461
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 462
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 463
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v5}, Lcom/android/extrasettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 464
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 465
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 466
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f10008a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 471
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 472
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f10008b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 474
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 475
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/extrasettings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mAdapter:Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;

    .line 476
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 477
    iget-object v4, p0, Lcom/android/extrasettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/extrasettings/DataUsageSummary;->mAdapter:Lcom/android/extrasettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 479
    return-object v3

    .line 374
    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 671
    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 672
    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 675
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 676
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/extrasettings/net/UidDetailProvider;->clearCache()V

    .line 677
    iput-object v2, p0, Lcom/android/extrasettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/extrasettings/net/UidDetailProvider;

    .line 679
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 681
    invoke-super {p0}, Lcom/android/extrasettings/HighlightingFragment;->onDestroy()V

    .line 682
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    .line 666
    :goto_0
    :pswitch_0
    return v9

    .line 625
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .line 626
    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 627
    invoke-static {p0}, Lcom/android/extrasettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/extrasettings/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    .line 625
    goto :goto_1

    .line 630
    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/extrasettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 635
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    .line 636
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 637
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateMenuTitles()V

    .line 638
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 642
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    .line 643
    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/extrasettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 644
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateMenuTitles()V

    .line 645
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 653
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v7}, Lcom/android/extrasettings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 660
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 661
    .local v0, "sa":Lcom/android/extrasettings/SettingsActivity;
    const-class v1, Lcom/android/extrasettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908f1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002f3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2948
    invoke-super {p0}, Lcom/android/extrasettings/HighlightingFragment;->onPause()V

    .line 2953
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2954
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSubscriptionsChangedListener()V

    .line 2956
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    if-eqz v0, :cond_0

    .line 2957
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v0}, Lcom/mediatek/datausage/OverViewTabAdapter;->unbindOperaMaxLoader()V

    .line 2959
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 542
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 543
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-nez v9, :cond_1

    move v4, v7

    .line 545
    .local v4, "isOwner":Z
    :goto_0
    const v9, 0x7f1002f4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 546
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 547
    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    move v9, v7

    :goto_1
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    :goto_2
    const v9, 0x7f1002f5

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 553
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 554
    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v9, v7

    :goto_3
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    :goto_4
    const v9, 0x7f1002f3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 561
    sget-object v9, Lcom/android/extrasettings/DataUsageSummary;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    const v10, 0x7f0908d6

    invoke-virtual {p0, v10}, Lcom/android/extrasettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bgDataSwitch"

    invoke-interface {v9, v10, v11}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "menuBgDataSwitch":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v9, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 565
    iget-object v10, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    move v9, v7

    :goto_5
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 568
    const v9, 0x7f1002f6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 569
    .local v6, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 570
    :cond_0
    if-nez v0, :cond_7

    move v9, v7

    :goto_6
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    :goto_7
    const v9, 0x7f1002f7

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 577
    iget-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    const v9, 0x7f1002f8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 580
    iget-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/extrasettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    :goto_8
    invoke-interface {v9, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 583
    const v7, 0x7f1002f9

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 585
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f090ad6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 586
    invoke-static {v1, v2, v3}, Lcom/android/extrasettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 591
    :goto_9
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateMenuTitles()V

    .line 592
    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v5    # "menuBgDataSwitch":Ljava/lang/String;
    .end local v6    # "metered":Landroid/view/MenuItem;
    :cond_1
    move v4, v8

    .line 543
    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_2
    move v9, v8

    .line 547
    goto/16 :goto_1

    .line 549
    :cond_3
    iget-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v9, v8

    .line 554
    goto/16 :goto_3

    .line 556
    :cond_5
    iget-object v9, p0, Lcom/android/extrasettings/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .restart local v5    # "menuBgDataSwitch":Ljava/lang/String;
    :cond_6
    move v9, v8

    .line 565
    goto :goto_5

    .restart local v6    # "metered":Landroid/view/MenuItem;
    :cond_7
    move v9, v8

    .line 570
    goto :goto_6

    .line 572
    :cond_8
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v7, v8

    .line 580
    goto :goto_8

    .line 588
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/extrasettings/HighlightingFragment;->onResume()V

    .line 500
    const-string v0, "DataUsage"

    const-string v1, "onResume()... start"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/extrasettings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/DataUsageSummary$1;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 509
    new-instance v0, Lcom/android/extrasettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/DataUsageSummary$2;-><init>(Lcom/android/extrasettings/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 530
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->onResumeEx()V

    .line 532
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2997
    invoke-super {p0, p1}, Lcom/android/extrasettings/HighlightingFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2998
    const-string v0, "current_tab"

    iget-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/android/extrasettings/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 485
    const-string v1, "DataUsage"

    const-string v2, "onViewStateRestored"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/extrasettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/extrasettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 490
    invoke-direct {p0, p1}, Lcom/android/extrasettings/DataUsageSummary;->restoreSavedTab(Landroid/os/Bundle;)V

    .line 494
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateTabs()V

    .line 495
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1118
    invoke-direct {p0}, Lcom/android/extrasettings/DataUsageSummary;->updateMenuTitles()V

    .line 1119
    return-void
.end method
