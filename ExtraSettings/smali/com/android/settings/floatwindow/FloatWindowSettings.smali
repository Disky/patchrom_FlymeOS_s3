.class public Lcom/android/extrasettings/floatwindow/FloatWindowSettings;
.super Landroid/preference/PreferenceActivity;
.source "FloatWindowSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private app_local:[Ljava/lang/String;

.field private bottom_one_view:Landroid/preference/Preference;

.field private bottom_two_view:Landroid/preference/Preference;

.field private left_one_view:Landroid/preference/Preference;

.field private left_two_view:Landroid/preference/Preference;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mSwitchChecked:Z

.field private packageManager:Landroid/content/pm/PackageManager;

.field private right_one_view:Landroid/preference/Preference;

.field private right_two_view:Landroid/preference/Preference;

.field private top_one_view:Landroid/preference/Preference;

.field private top_two_view:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top_one"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "left_one"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "right_one"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bottom_one"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "top_two"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "left_two"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "right_two"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bottom_two"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->app_local:[Ljava/lang/String;

    return-void
.end method

.method private setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v4, 0x0

    .line 96
    move-object v0, p0

    .line 97
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 99
    iget-object v5, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "apps_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mSwitchChecked:Z

    .line 100
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v5, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mSwitchChecked:Z

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->setCheckBoxEnabled(Z)V

    .line 105
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 106
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 107
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 110
    .local v1, "padding":I
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 122
    .end local v1    # "padding":I
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 99
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    const-string v1, "FloatWindowSettings"

    const-string v2, "onCheckedChanged() :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apps_switch"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-direct {p0, p2}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->setCheckBoxEnabled(Z)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "show_float_apps_window"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_show"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "FloatWindowSettings"

    const-string v1, "onCreate() :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    .line 39
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->packageManager:Landroid/content/pm/PackageManager;

    .line 42
    const-string v0, "top_one"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_one_view:Landroid/preference/Preference;

    .line 43
    const-string v0, "left_one"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_one_view:Landroid/preference/Preference;

    .line 44
    const-string v0, "right_one"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_one_view:Landroid/preference/Preference;

    .line 45
    const-string v0, "bottom_one"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_one_view:Landroid/preference/Preference;

    .line 47
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_one_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 52
    const-string v0, "top_two"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_two_view:Landroid/preference/Preference;

    .line 53
    const-string v0, "left_two"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_two_view:Landroid/preference/Preference;

    .line 54
    const-string v0, "right_two"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_two_view:Landroid/preference/Preference;

    .line 55
    const-string v0, "bottom_two"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_two_view:Landroid/preference/Preference;

    .line 57
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_two_view:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->init()V

    .line 63
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 126
    const-string v1, "FloatWindowSettings"

    const-string v2, "onPreferenceClick() :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "allAppsIntent":Landroid/content/Intent;
    const-string v1, "witch"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->startActivity(Landroid/content/Intent;)V

    .line 131
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_one_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_one_view:Landroid/preference/Preference;

    const-string v2, "com.android.dialer&com.android.dialer.DialtactsActivity"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_one_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_one_view:Landroid/preference/Preference;

    const-string v2, "com.android.mms&com.android.mms.ui.BootActivity"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_one_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_one_view:Landroid/preference/Preference;

    const-string v2, "com.android.email&com.android.email.activity.Welcome"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_one_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_one_view:Landroid/preference/Preference;

    const-string v2, "com.android.browser&com.android.browser.BrowserActivity"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_two_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->top_two_view:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_two_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->left_two_view:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_two_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->right_two_view:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_two_view:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->bottom_two_view:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 76
    return-void
.end method

.method public updateText(Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 8
    .param p1, "appLocal"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/preference/Preference;
    .param p3, "defaultApp"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "strCompontent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_1

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->packageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b6c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 83
    :cond_1
    if-eqz p3, :cond_0

    .line 84
    :try_start_1
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->packageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "&"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "&"

    invoke-virtual {p3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 85
    move-object v2, p3

    .line 86
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/floatwindow/FloatWindowSettings;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1
.end method
