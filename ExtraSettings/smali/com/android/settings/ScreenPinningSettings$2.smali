.class final Lcom/android/extrasettings/ScreenPinningSettings$2;
.super Lcom/android/extrasettings/search/BaseSearchIndexProvider;
.source "ScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
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
    const v4, 0x7f090a4c

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 193
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 194
    .local v0, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 196
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    # invokes: Lcom/android/extrasettings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/extrasettings/ScreenPinningSettings;->access$100(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 201
    .restart local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const v3, 0x7f090af9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 202
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 203
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    return-object v2

    .line 206
    :cond_0
    new-instance v0, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 207
    .restart local v0    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const v3, 0x7f090a4d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 208
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 209
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
