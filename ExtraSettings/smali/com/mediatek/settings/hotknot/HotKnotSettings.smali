.class public Lcom/mediatek/settings/hotknot/HotKnotSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "HotKnotSettings.java"

# interfaces
.implements Lcom/android/extrasettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field private mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotSettings$2;

    invoke-direct {v0}, Lcom/mediatek/settings/hotknot/HotKnotSettings$2;-><init>()V

    sput-object v0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings$1;-><init>(Lcom/mediatek/settings/hotknot/HotKnotSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 62
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-static {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 63
    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "HotKnotSettings"

    const-string v2, "Hotknot adapter is null, finish Hotknot settings"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 68
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v1, 0x7f040061

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 92
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->teardownSwitchBar()V

    .line 95
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->pause()V

    .line 111
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->resume()V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStart()V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/settings/hotknot/HotKnotSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 77
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 78
    const-string v1, "HotKnotSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, mSwitchBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    iget-object v2, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;-><init>(Landroid/content/Context;Lcom/android/extrasettings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/mediatek/settings/hotknot/HotKnotSettings;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    .line 80
    return-void
.end method
