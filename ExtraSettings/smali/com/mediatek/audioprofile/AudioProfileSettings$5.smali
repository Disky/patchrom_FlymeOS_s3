.class final Lcom/mediatek/audioprofile/AudioProfileSettings$5;
.super Lcom/android/extrasettings/search/BaseSearchIndexProvider;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 705
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
    const v4, 0x7f0909f8

    .line 708
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 711
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 712
    .local v0, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 713
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 714
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 715
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    return-object v2
.end method
