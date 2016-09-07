.class public Lcom/android/extrasettings/users/UserDetailsSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mDeletingUserDialog:Landroid/app/ProgressDialog;

.field private mGuestUser:Z

.field private mPhonePref:Landroid/preference/SwitchPreference;

.field private mRemoveUserPref:Landroid/preference/Preference;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/extrasettings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/extrasettings/users/UserDetailsSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/extrasettings/users/UserDetailsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/users/UserDetailsSettings$1;-><init>(Lcom/android/extrasettings/users/UserDetailsSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/users/UserDetailsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserDetailsSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->dismissDeleteUserDialog()V

    return-void
.end method

.method private dismissDeleteUserDialog()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    :cond_0
    return-void
.end method

.method private showDeleteUserDialog()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 210
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 217
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    .line 97
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 98
    const-string v1, "enable_calling"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mPhonePref:Landroid/preference/SwitchPreference;

    .line 99
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    .line 101
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "guest_user"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mGuestUser:Z

    .line 103
    iget-boolean v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mGuestUser:Z

    if-nez v1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "user_id"

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 106
    .local v6, "userId":I
    if-ne v6, v8, :cond_0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Arguments to this fragment must contain the user id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 110
    iget-object v7, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mPhonePref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_outgoing_calls"

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v7, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    .end local v6    # "userId":I
    :goto_1
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_remove_user"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mPhonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void

    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "userId":I
    :cond_2
    move v1, v5

    .line 110
    goto :goto_0

    .line 115
    .end local v6    # "userId":I
    :cond_3
    const-string v1, "remove_user"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mPhonePref:Landroid/preference/SwitchPreference;

    const v7, 0x7f090965

    invoke-virtual {v1, v7}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 118
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 119
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mPhonePref:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v8, "no_outgoing_calls"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-object v1

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v4, Lcom/android/extrasettings/users/UserDetailsSettings$2;

    invoke-direct {v4, p0}, Lcom/android/extrasettings/users/UserDetailsSettings$2;-><init>(Lcom/android/extrasettings/users/UserDetailsSettings;)V

    invoke-static {v2, v3, v4}, Lcom/android/extrasettings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 192
    .local v1, "dlg":Landroid/app/Dialog;
    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 134
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 152
    iget-boolean v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz v5, :cond_2

    .line 154
    iget-object v8, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v9, "no_outgoing_calls"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    const-string v7, "no_sms"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v7, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 160
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 161
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 162
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    new-instance v2, Landroid/os/UserHandle;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 164
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 165
    .local v3, "userRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 166
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v3, v2}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    .end local v3    # "userRestrictions":Landroid/os/Bundle;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move v5, v7

    .line 154
    goto :goto_0

    .line 171
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 172
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    iget-object v8, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_outgoing_calls"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v9, v5, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 174
    iget-object v5, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_sms"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {v5, v8, v7, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 177
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    return v6

    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    move v5, v7

    .line 172
    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mRemoveUserPref:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 141
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the owner can remove a user"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserDetailsSettings;->showDialog(I)V

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeUser()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserDetailsSettings;->showDeleteUserDialog()V

    .line 204
    iget-object v0, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/extrasettings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 205
    return-void
.end method
