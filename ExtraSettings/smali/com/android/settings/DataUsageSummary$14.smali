.class final Lcom/android/extrasettings/DataUsageSummary$14;
.super Lcom/android/extrasettings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2529
    invoke-direct {p0}, Lcom/android/extrasettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f090b94

    .line 2532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2534
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2537
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2538
    .local v0, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2539
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2540
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2543
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2544
    .restart local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2545
    const v3, 0x7f090bbe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2546
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2547
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2550
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2551
    .restart local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const-string v3, "data_usage_disable_mobile_limit"

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2552
    const v3, 0x7f090bb3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2553
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2554
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2558
    .restart local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const-string v3, "data_usage_cycle"

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2559
    const v3, 0x7f090b9b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2560
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2561
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2563
    return-object v2
.end method
