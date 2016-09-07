.class final Lcom/android/extrasettings/wifi/WifiSettings$5;
.super Lcom/android/extrasettings/search/BaseSearchIndexProvider;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/android/extrasettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 11
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
    const/4 v10, 0x0

    const v9, 0x7f090360

    .line 1155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1159
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1160
    .local v2, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1161
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1162
    const v8, 0x7f0909d5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1163
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 1169
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v4, Lcom/mediatek/wifi/WifiSettingsExt;

    invoke-direct {v4, p1}, Lcom/mediatek/wifi/WifiSettingsExt;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v4, "mwifiSettingsExt":Lcom/mediatek/wifi/WifiSettingsExt;
    # invokes: Lcom/android/extrasettings/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    invoke-static {p1, v4, v7, v10, v10}, Lcom/android/extrasettings/wifi/WifiSettings;->access$300(Landroid/content/Context;Lcom/mediatek/wifi/WifiSettingsExt;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v1

    .line 1172
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/extrasettings/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/wifi/AccessPoint;

    .line 1174
    .local v0, "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1175
    new-instance v2, Lcom/android/extrasettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1176
    .restart local v2    # "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1177
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1178
    iput-boolean p2, v2, Lcom/android/extrasettings/search/SearchIndexableRaw;->enabled:Z

    .line 1179
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1182
    .end local v0    # "accessPoint":Lcom/android/extrasettings/wifi/AccessPoint;
    :cond_1
    return-object v6
.end method
