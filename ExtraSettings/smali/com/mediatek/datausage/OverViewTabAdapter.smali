.class public Lcom/mediatek/datausage/OverViewTabAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "OverViewTabAdapter.java"


# static fields
.field private static mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mContext:Landroid/content/Context;

.field private mDataSavingSwitch:Landroid/widget/Switch;

.field private mDataSavingView:Landroid/view/View;

.field private mDataSavingZone:Landroid/widget/LinearLayout;

.field private mGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitBytes:[J

.field private mMobilePos:I

.field private mMobileTotal:[J

.field private mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

.field private mSimNum:I

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSublist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUiHandler:Landroid/os/Handler;

.field private mWifiPos:I

.field private mWifiToday:J

.field private mWifiTotal:J

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsSession"    # Landroid/net/INetworkStatsSession;

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 662
    new-instance v0, Lcom/mediatek/datausage/OverViewTabAdapter$4;

    invoke-direct {v0, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$4;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    .line 679
    new-instance v0, Lcom/mediatek/datausage/OverViewTabAdapter$5;

    invoke-direct {v0, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$5;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->serviceConnection:Landroid/content/ServiceConnection;

    .line 127
    const-string v0, "OverViewTabAdapter"

    const-string v1, "OverViewTabAdapter()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 131
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 132
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initPolicy()V

    .line 133
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileState()V

    .line 134
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initData()V

    .line 136
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getDataUsageSummaryPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v0

    sput-object v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 138
    new-instance v0, Lcom/mediatek/datausage/OverViewTabAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/datausage/OverViewTabAdapter$1;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mUiHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/datausage/OverViewTabAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datausage/OverViewTabAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/datausage/OverViewTabAdapter;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datausage/OverViewTabAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/datausage/OverViewTabAdapter;)Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/datausage/OverViewTabAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    return-object v0
.end method

.method private calcMobileProgress(JJ)I
    .locals 11
    .param p1, "totalUsage"    # J
    .param p3, "limitUsage"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    .line 226
    const-string v3, "OverViewTabAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcMobileProgress() totalUsage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " limitUsage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-wide/16 v0, 0x0

    .line 229
    .local v0, "per":D
    cmp-long v3, p3, v8

    if-gez v3, :cond_2

    .line 230
    cmp-long v3, p1, v8

    if-nez v3, :cond_1

    move-wide v0, v4

    .line 238
    :goto_0
    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 239
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 241
    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 242
    .local v2, "value":I
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcMobileProgress value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return v2

    .line 230
    .end local v2    # "value":I
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 231
    :cond_2
    cmp-long v3, p1, p3

    if-gtz v3, :cond_3

    .line 232
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v0, v6, v8

    .line 233
    const-string v3, "OverViewTabAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "limitUsage >=  totalUsage  per = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 236
    const-string v3, "OverViewTabAdapter"

    const-string v6, "limitUsage < totalUsage ,so set per = 1"

    invoke-static {v3, v6}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private calcWifiTodayProgress(JJ)I
    .locals 9
    .param p1, "todayUsage"    # J
    .param p3, "totalUsage"    # J

    .prologue
    .line 205
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcWifiTodayProgress() todayUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalUsage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-wide/16 v0, 0x0

    .line 208
    .local v0, "per":D
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 209
    const-wide/16 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    double-to-int v2, v4

    .line 217
    .local v2, "value":I
    const-string v3, "OverViewTabAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcWifiTodayProgress() value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return v2

    .line 211
    .end local v2    # "value":I
    :cond_1
    long-to-double v4, p1

    long-to-double v6, p3

    div-double v0, v4, v6

    .line 212
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 213
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    goto :goto_0
.end method

.method private calcWifiTotalProgress(J)I
    .locals 3
    .param p1, "todayUsage"    # J

    .prologue
    .line 222
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private getMobileData()V
    .locals 32

    .prologue
    .line 247
    const-string v5, "OverViewTabAdapter"

    const-string v12, "getMobileData()"

    invoke-static {v5, v12}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    if-nez v5, :cond_1

    .line 317
    :cond_0
    return-void

    .line 251
    :cond_1
    new-instance v13, Lcom/android/extrasettings/net/ChartData;

    invoke-direct {v13}, Lcom/android/extrasettings/net/ChartData;-><init>()V

    .line 252
    .local v13, "data":Lcom/android/extrasettings/net/ChartData;
    const/4 v4, 0x0

    .line 256
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/SubscriptionInfo;

    .line 257
    .local v24, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v25

    .line 258
    .local v25, "subscriberId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v26

    .line 261
    .local v26, "template":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/16 v12, 0xa

    move-object/from16 v0, v26

    invoke-interface {v5, v0, v12}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v13, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    .line 263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v28

    aput-wide v28, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    iget-object v5, v13, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 273
    .local v20, "historyStart":J
    iget-object v5, v13, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 274
    .local v18, "historyEnd":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 275
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v23

    .line 276
    .local v23, "policy":Landroid/net/NetworkPolicy;
    move-wide/from16 v14, v18

    .line 277
    .local v14, "cycleEnd":J
    move-wide/from16 v8, v18

    .line 278
    .local v8, "cycleEndBak":J
    move-wide/from16 v6, v20

    .line 279
    .local v6, "cycleStart":J
    if-eqz v23, :cond_5

    .line 281
    move-wide/from16 v0, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v14

    .line 283
    :goto_1
    cmp-long v5, v14, v20

    if-lez v5, :cond_2

    .line 284
    move-object/from16 v0, v23

    invoke-static {v14, v15, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 285
    cmp-long v5, v6, v10

    if-gtz v5, :cond_3

    cmp-long v5, v10, v14

    if-gtz v5, :cond_3

    .line 286
    const-string v5, "OverViewTabAdapter"

    const-string v12, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v5, v12}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2
    :goto_2
    const-string v5, "OverViewTabAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cycleEndBak="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, "cycleStart="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v17, 0x0

    .line 309
    .local v17, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v5, v13, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    :goto_3
    aput-wide v28, v5, v4

    .line 312
    const-string v5, "OverViewTabAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mMobileTotal["

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, "]="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v4

    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, "mLimitBytes"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, "["

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v27, "]="

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v4

    move-wide/from16 v0, v28

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 316
    goto/16 :goto_0

    .line 265
    .end local v6    # "cycleStart":J
    .end local v8    # "cycleEndBak":J
    .end local v10    # "now":J
    .end local v14    # "cycleEnd":J
    .end local v17    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v18    # "historyEnd":J
    .end local v20    # "historyStart":J
    .end local v23    # "policy":Landroid/net/NetworkPolicy;
    :catch_0
    move-exception v16

    .line 267
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    const-wide/16 v28, -0x2

    aput-wide v28, v5, v4

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    goto/16 :goto_0

    .line 291
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v6    # "cycleStart":J
    .restart local v8    # "cycleEndBak":J
    .restart local v10    # "now":J
    .restart local v14    # "cycleEnd":J
    .restart local v18    # "historyEnd":J
    .restart local v20    # "historyStart":J
    .restart local v23    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    move-wide v8, v14

    .line 292
    move-wide v14, v6

    goto/16 :goto_1

    .line 302
    :cond_4
    move-wide v8, v14

    .line 303
    move-wide v14, v6

    .line 297
    :cond_5
    cmp-long v5, v14, v20

    if-lez v5, :cond_2

    .line 298
    const-wide v28, 0x90321000L

    sub-long v6, v14, v28

    .line 299
    cmp-long v5, v6, v10

    if-gtz v5, :cond_4

    cmp-long v5, v10, v14

    if-gtz v5, :cond_4

    goto/16 :goto_2

    .line 310
    .restart local v17    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_6
    const-wide/16 v28, 0x0

    goto/16 :goto_3
.end method

.method private getMobileState()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "OverViewTabAdapter"

    const-string v1, "getMobileState()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    .line 160
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    .line 161
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getWifiData()V
    .locals 28

    .prologue
    .line 165
    const-string v3, "OverViewTabAdapter"

    const-string v10, "getWifiData()"

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Lcom/android/extrasettings/net/ChartData;

    invoke-direct {v2}, Lcom/android/extrasettings/net/ChartData;-><init>()V

    .line 168
    .local v2, "data":Lcom/android/extrasettings/net/ChartData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v10

    const/16 v11, 0xa

    invoke-interface {v3, v10, v11}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    iput-object v3, v2, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    const/16 v22, 0x0

    .line 175
    .local v22, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-object v3, v2, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v26

    .line 176
    .local v26, "historyStart":J
    iget-object v3, v2, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v24

    .line 177
    .local v24, "historyEnd":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 178
    .local v8, "now":J
    const-string v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "historyStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " historyEnd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    cmp-long v3, v24, v8

    if-lez v3, :cond_1

    move-wide/from16 v20, v24

    .line 181
    .local v20, "cycleEnd":J
    :goto_1
    move-wide/from16 v6, v20

    .line 182
    .local v6, "cycleEndBak":J
    move-wide/from16 v4, v26

    .line 183
    .local v4, "cycleStart":J
    :goto_2
    cmp-long v3, v20, v26

    if-lez v3, :cond_0

    .line 185
    const-wide v10, 0x90321000L

    sub-long v4, v20, v10

    .line 186
    cmp-long v3, v4, v8

    if-gtz v3, :cond_2

    cmp-long v3, v8, v20

    if-gtz v3, :cond_2

    .line 188
    const-string v3, "OverViewTabAdapter"

    const-string v10, "cycleStart <= now && now <= cycleEnd"

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v3, v2, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v22

    .line 196
    const-string v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cycleStart = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cycleEndBak = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    .line 198
    iget-object v11, v2, Lcom/android/extrasettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getUtcDateMillis()J

    move-result-wide v12

    const/16 v18, 0x0

    move-wide v14, v8

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v22

    .line 199
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v22

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v12

    :goto_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    .line 200
    const-string v3, "OverViewTabAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWifiTotal = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mWifiToday = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 171
    .end local v4    # "cycleStart":J
    .end local v6    # "cycleEndBak":J
    .end local v8    # "now":J
    .end local v20    # "cycleEnd":J
    .end local v22    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v24    # "historyEnd":J
    .end local v26    # "historyStart":J
    :catch_0
    move-exception v19

    .line 172
    .local v19, "e":Landroid/os/RemoteException;
    const-string v3, "OverViewTabAdapter"

    const-string v10, "Remote Exception happens"

    invoke-static {v3, v10}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v8    # "now":J
    .restart local v22    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v24    # "historyEnd":J
    .restart local v26    # "historyStart":J
    :cond_1
    move-wide/from16 v20, v8

    .line 180
    goto/16 :goto_1

    .line 191
    .restart local v4    # "cycleStart":J
    .restart local v6    # "cycleEndBak":J
    .restart local v20    # "cycleEnd":J
    :cond_2
    move-wide/from16 v6, v20

    .line 192
    move-wide/from16 v20, v4

    goto/16 :goto_2

    .line 197
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 199
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_4
.end method

.method private inflateLockScreenView(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x1

    .line 593
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 594
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    .line 595
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    invoke-static {p1, v4, v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    .line 597
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 598
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 600
    const/4 v1, 0x0

    .line 602
    .local v1, "state":I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_saving_key"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 606
    const-string v4, "OverViewTabAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get state from provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 614
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter$2;

    invoke-direct {v4, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$2;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 632
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 633
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f09013d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 634
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    iget-object v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingView:Landroid/view/View;

    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter$3;

    invoke-direct {v4, p0}, Lcom/mediatek/datausage/OverViewTabAdapter$3;-><init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    .end local v1    # "state":I
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 607
    .restart local v1    # "state":I
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .line 609
    const-string v4, "OverViewTabAdapter"

    const-string v5, "Get data from provider failure"

    invoke-static {v4, v5}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 655
    const v2, 0x7f040088

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 656
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 658
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    const v4, 0x7f090360

    const/4 v3, 0x0

    .line 329
    const-string v0, "OverViewTabAdapter"

    const-string v1, "initData()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    .line 331
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iput v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    .line 334
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iput v3, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    goto :goto_0
.end method

.method private initPolicy()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "OverViewTabAdapter"

    const-string v1, "initPolicy()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 323
    new-instance v0, Lcom/android/extrasettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/extrasettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    .line 324
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->read()V

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public bindOperaMaxLoader()V
    .locals 4

    .prologue
    .line 704
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const-string v2, "com.opera.max.loader"

    invoke-static {v1, v2}, Lcom/mediatek/settings/UtilsExt;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const-string v1, "OverViewTabAdapter"

    const-string v2, "bindOperaMaxLoader"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.opera.max.loader"

    const-string v2, "com.opera.max.loader.LoaderService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 709
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 712
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 358
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 367
    const/16 v20, 0x0

    .line 369
    .local v20, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 371
    .local v11, "inflate":Landroid/view/LayoutInflater;
    const v21, 0x7f04004b

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 373
    const v21, 0x7f100085

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 374
    .local v16, "textTitle":Landroid/widget/TextView;
    const v21, 0x7f100087

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 375
    .local v17, "textUsage":Landroid/widget/TextView;
    const v21, 0x7f100086

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 376
    .local v13, "progress":Landroid/widget/ProgressBar;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getWifiData()V

    .line 377
    if-nez p2, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090138

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 381
    .local v19, "usage":Ljava/lang/String;
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "childPosition="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " and usage= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiToday:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTodayProgress(JJ)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 493
    .end local v11    # "inflate":Landroid/view/LayoutInflater;
    .end local v13    # "progress":Landroid/widget/ProgressBar;
    .end local v16    # "textTitle":Landroid/widget/TextView;
    .end local v17    # "textUsage":Landroid/widget/TextView;
    .end local v19    # "usage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v20

    .line 387
    .restart local v11    # "inflate":Landroid/view/LayoutInflater;
    .restart local v13    # "progress":Landroid/widget/ProgressBar;
    .restart local v16    # "textTitle":Landroid/widget/TextView;
    .restart local v17    # "textUsage":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f090139

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 390
    .restart local v19    # "usage":Ljava/lang/String;
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "childPosition = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " and usage= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiTotal:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcWifiTotalProgress(J)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 395
    .end local v11    # "inflate":Landroid/view/LayoutInflater;
    .end local v13    # "progress":Landroid/widget/ProgressBar;
    .end local v16    # "textTitle":Landroid/widget/TextView;
    .end local v17    # "textUsage":Landroid/widget/TextView;
    .end local v19    # "usage":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 397
    .restart local v11    # "inflate":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/datausage/OverViewTabAdapter;->getChildrenCount(I)I

    move-result v7

    .line 398
    .local v7, "childCount":I
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "childCount: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mSimSum: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_3

    add-int/lit8 v21, v7, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 401
    const v21, 0x7f04003c

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 402
    const v21, 0x7f100071

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mDataSavingZone:Landroid/widget/LinearLayout;

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mediatek/datausage/OverViewTabAdapter;->inflateLockScreenView(Landroid/view/LayoutInflater;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileData()V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x107000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v18

    .line 409
    .local v18, "tintArr":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v15

    .line 410
    .local v15, "simColor":I
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([I)V

    .line 411
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    .line 412
    .local v10, "index":I
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "usage : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, p2

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " limit : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, p2

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", index: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v6, v18

    .local v6, "arr$":[I
    array-length v12, v6

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_4

    aget v8, v6, v9

    .line 415
    .local v8, "i":I
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "i: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 417
    .end local v8    # "i":I
    :cond_4
    const-string v21, "OverViewTabAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ",simColor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, p2

    cmp-long v21, v22, v24

    if-lez v21, :cond_5

    .line 420
    const/4 v10, 0x5

    .line 422
    :cond_5
    packed-switch v10, :pswitch_data_0

    .line 448
    const v21, 0x7f04004a

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 452
    :goto_2
    const v21, 0x7f100082

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 453
    .restart local v16    # "textTitle":Landroid/widget/TextView;
    const v21, 0x7f100084

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 454
    .restart local v17    # "textUsage":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v14

    .line 455
    .local v14, "progressBarColor":I
    const v21, 0x7f100083

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 456
    .restart local v13    # "progress":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    sget-object v21, Lcom/mediatek/datausage/OverViewTabAdapter;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeTextViewBackgroundResource(ILandroid/widget/TextView;)V

    .line 464
    sget-object v22, Lcom/mediatek/datausage/OverViewTabAdapter;->mExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSublist:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v21

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customizeMobileDataSummary(Landroid/view/View;Landroid/view/View;I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    const-wide/16 v24, -0x1

    cmp-long v21, v22, v24

    if-lez v21, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, p2

    cmp-long v21, v22, v24

    if-lez v21, :cond_6

    .line 469
    const-string v21, "OverViewTabAdapter"

    const-string v22, "Usage bytes is bigger than the limit bytes , show warning"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f09013c

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v28, v0

    aget-wide v28, v28, p2

    sub-long v26, v26, v28

    invoke-static/range {v25 .. v27}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v21, v0

    aget-wide v22, v21, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v21, v0

    aget-wide v24, v21, p2

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/datausage/OverViewTabAdapter;->calcMobileProgress(JJ)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 424
    .end local v13    # "progress":Landroid/widget/ProgressBar;
    .end local v14    # "progressBarColor":I
    .end local v16    # "textTitle":Landroid/widget/TextView;
    .end local v17    # "textUsage":Landroid/widget/TextView;
    :pswitch_0
    const v21, 0x7f04004a

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 426
    goto/16 :goto_2

    .line 428
    :pswitch_1
    const v21, 0x7f040045

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 430
    goto/16 :goto_2

    .line 432
    :pswitch_2
    const v21, 0x7f040046

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 434
    goto/16 :goto_2

    .line 436
    :pswitch_3
    const v21, 0x7f040048

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 438
    goto/16 :goto_2

    .line 440
    :pswitch_4
    const v21, 0x7f040047

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 442
    goto/16 :goto_2

    .line 444
    :pswitch_5
    const v21, 0x7f040049

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 446
    goto/16 :goto_2

    .line 476
    .restart local v13    # "progress":Landroid/widget/ProgressBar;
    .restart local v14    # "progressBarColor":I
    .restart local v16    # "textTitle":Landroid/widget/TextView;
    .restart local v17    # "textUsage":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f09013b

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, p2

    invoke-static/range {v25 .. v27}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mLimitBytes:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, p2

    invoke-static/range {v25 .. v27}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 484
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobileTotal:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, p2

    invoke-static/range {v21 .. v23}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 498
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mWifiPos:I

    if-ne p1, v0, :cond_0

    .line 499
    const/4 v0, 0x2

    .line 508
    :goto_0
    return v0

    .line 500
    :cond_0
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mMobilePos:I

    if-ne p1, v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    const-string v1, "com.opera.max.loader"

    invoke-static {v0, v1}, Lcom/mediatek/settings/UtilsExt;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const-string v0, "OverViewTabAdapter"

    const-string v1, "add Data Saving item"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSimNum:I

    goto :goto_0

    .line 508
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 526
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 533
    if-eqz p3, :cond_0

    instance-of v2, p3, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 535
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 539
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .local v1, "item":Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mGroup:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    return-object v1

    .end local v1    # "item":Landroid/widget/TextView;
    :cond_1
    move-object v1, p3

    .line 537
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "item":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getUtcDateMillis()J
    .locals 12

    .prologue
    .line 561
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v9, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 563
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "date":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 567
    .local v1, "year":I
    const/4 v2, 0x4

    const/4 v4, 0x6

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 570
    .local v8, "month":I
    const/4 v2, 0x6

    const/16 v4, 0x8

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 572
    .local v3, "day":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 573
    .local v0, "gc":Ljava/util/Calendar;
    add-int/lit8 v2, v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 574
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    return-wide v4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public unbindOperaMaxLoader()V
    .locals 3

    .prologue
    .line 715
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_0

    .line 716
    const-string v1, "OverViewTabAdapter"

    const-string v2, "unbindOperaMaxLoader"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->stateListener:Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;

    invoke-interface {v1, v2}, Lcom/mediatek/common/operamax/ILoaderService;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 724
    :cond_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OverViewTabAdapter"

    const-string v2, "unregisterStateListener error"

    invoke-static {v1, v2}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAdapter()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "OverViewTabAdapter"

    const-string v1, "updateAdapter()"

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/mediatek/datausage/OverViewTabAdapter;->mPolicyEditor:Lcom/android/extrasettings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/extrasettings/net/NetworkPolicyEditor;->read()V

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->getMobileState()V

    .line 586
    invoke-direct {p0}, Lcom/mediatek/datausage/OverViewTabAdapter;->initData()V

    .line 587
    return-void
.end method
