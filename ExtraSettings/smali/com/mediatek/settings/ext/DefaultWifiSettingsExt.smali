.class public Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCategories(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 69
    return-void
.end method

.method public addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "isConfiged"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public adjustPriority()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public disconnect(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 58
    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 37
    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 40
    return-void
.end method

.method public getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getPreferenceCategory(Landroid/preference/PreferenceScreen;)Ljava/util/List;
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "preferenceCategoryList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceGroup;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-object v0
.end method

.method public isTustAP(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "security"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public recordPriority(I)V
    .locals 0
    .param p1, "selectPriority"    # I

    .prologue
    .line 52
    return-void
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 45
    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 19
    return-void
.end method

.method public setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "trustPref"    # Landroid/preference/PreferenceCategory;
    .param p2, "configedPref"    # Landroid/preference/PreferenceCategory;
    .param p3, "newPref"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 34
    return-void
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 23
    return-void
.end method

.method public setLastPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 25
    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 54
    return-void
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 21
    return-void
.end method

.method public updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "menuId"    # I
    .param p3, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 30
    return-void
.end method

.method public updatePriority()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public updatePriorityAfterConnect(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 60
    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 56
    return-void
.end method
