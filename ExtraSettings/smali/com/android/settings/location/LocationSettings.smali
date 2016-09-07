.class public Lcom/android/extrasettings/location/LocationSettings;
.super Lcom/android/extrasettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private injector:Lcom/android/extrasettings/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/location/LocationSettings;)Lcom/android/extrasettings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/location/LocationSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->injector:Lcom/android/extrasettings/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 237
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 239
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/extrasettings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/extrasettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->injector:Lcom/android/extrasettings/location/SettingsInjector;

    .line 242
    iget-object v4, p0, Lcom/android/extrasettings/location/LocationSettings;->injector:Lcom/android/extrasettings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/extrasettings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/extrasettings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/extrasettings/location/LocationSettings$3;-><init>(Lcom/android/extrasettings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 260
    invoke-direct {p0, v2, v0}, Lcom/android/extrasettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 265
    :goto_1
    return-void

    .line 242
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 263
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/extrasettings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/extrasettings/location/LocationSettings$1;-><init>(Lcom/android/extrasettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 148
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 150
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 154
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 155
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 156
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 158
    :cond_0
    const v6, 0x7f060028

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 161
    invoke-direct {p0, v5}, Lcom/android/extrasettings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 162
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 163
    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/android/extrasettings/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/extrasettings/location/LocationSettings$2;-><init>(Lcom/android/extrasettings/location/LocationSettings;Lcom/android/extrasettings/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v7, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getOrder()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v5, v7}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->initCustomizedLocationSettings(Landroid/preference/PreferenceScreen;I)V

    .line 177
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 179
    new-instance v3, Lcom/android/extrasettings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/extrasettings/location/RecentLocationApps;-><init>(Lcom/android/extrasettings/SettingsActivity;)V

    .line 180
    .local v3, "recentApps":Lcom/android/extrasettings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/extrasettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 181
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/extrasettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 192
    :goto_0
    const/4 v2, 0x0

    .line 196
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    const/4 v2, 0x1

    .line 200
    :cond_1
    invoke-direct {p0, v0, v5, v2}, Lcom/android/extrasettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->refreshLocationMode()V

    .line 203
    return-object v5

    .line 185
    .end local v2    # "lockdownOnLocationAccess":Z
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f04006b

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 187
    const v6, 0x7f09052c

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 189
    iget-object v6, p0, Lcom/android/extrasettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/extrasettings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 210
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    iput-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 216
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f090ae1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/extrasettings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .line 97
    .local v0, "activity":Lcom/android/extrasettings/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 99
    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsActivity;->getSwitchBar()Lcom/android/extrasettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    .line 100
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->getSwitch()Lcom/android/extrasettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 101
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/extrasettings/widget/SwitchBar;->show()V

    .line 103
    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 104
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;->onDestroyView()V

    .line 109
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SwitchBar;->hide()V

    .line 110
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 297
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/extrasettings/widget/SwitchBar;->setEnabled(Z)V

    .line 298
    iget-object v4, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v3}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->updateCustomizedLocationSettings()V

    .line 300
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 304
    iget-boolean v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 307
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 308
    iget-boolean v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/extrasettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 315
    const v1, 0x7f090ac2

    invoke-direct {p0, v2, v1}, Lcom/android/extrasettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 328
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->injector:Lcom/android/extrasettings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/extrasettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 329
    return-void

    .line 276
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f09052a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f090529

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f090528

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v3, p0, Lcom/android/extrasettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f090527

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 294
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 297
    goto :goto_2

    :cond_5
    move v3, v2

    .line 298
    goto :goto_3

    .line 318
    :cond_6
    if-eqz v0, :cond_7

    .line 319
    const v2, 0x7f090a4a

    invoke-direct {p0, v1, v2}, Lcom/android/extrasettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 321
    :cond_7
    const v1, 0x7f090a4b

    invoke-direct {p0, v2, v1}, Lcom/android/extrasettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/extrasettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    .line 136
    :cond_1
    invoke-super {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;->onPause()V

    .line 137
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/extrasettings/location/LocationSettingsBase;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/extrasettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 116
    iget-boolean v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/extrasettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/location/LocationSettings;->mValidListener:Z

    .line 120
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 336
    if-eqz p2, :cond_0

    .line 337
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/location/LocationSettings;->setLocationMode(I)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
