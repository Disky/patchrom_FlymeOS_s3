.class public interface abstract Lcom/mediatek/settings/ext/IWifiSettingsExt;
.super Ljava/lang/Object;
.source "IWifiSettingsExt.java"


# virtual methods
.method public abstract addCategories(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract addPreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Z)V
.end method

.method public abstract adjustPriority()V
.end method

.method public abstract disconnect(I)V
.end method

.method public abstract emptyCategory(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract emptyScreen(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
.end method

.method public abstract getPreferenceCategory(Landroid/preference/PreferenceScreen;)Ljava/util/List;
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
.end method

.method public abstract isTustAP(Ljava/lang/String;I)Z
.end method

.method public abstract recordPriority(I)V
.end method

.method public abstract refreshCategory(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract registerPriorityObserver(Landroid/content/ContentResolver;)V
.end method

.method public abstract setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
.end method

.method public abstract setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract setLastPriority(I)V
.end method

.method public abstract setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract unregisterPriorityObserver(Landroid/content/ContentResolver;)V
.end method

.method public abstract updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V
.end method

.method public abstract updatePriority()V
.end method

.method public abstract updatePriorityAfterConnect(I)V
.end method

.method public abstract updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
.end method
