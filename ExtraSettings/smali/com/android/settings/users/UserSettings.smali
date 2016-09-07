.class public Lcom/android/extrasettings/users/UserSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/extrasettings/users/EditUserInfoController$OnContentChangedCallback;


# instance fields
.field private mAddUser:Landroid/preference/Preference;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mCanAddRestrictedProfile:Z

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeletingUserDialog:Landroid/app/ProgressDialog;

.field private mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsGuest:Z

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mNicknamePreference:Lcom/android/extrasettings/SelectableEditTextPreference;

.field private mRemovingUserId:I

.field private mUpdateUserListOperate:Z

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 130
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    .line 131
    iput v1, p0, Lcom/android/extrasettings/users/UserSettings;->mAddedUserId:I

    .line 133
    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEnabled:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mCanAddRestrictedProfile:Z

    .line 136
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 138
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    .line 147
    new-instance v0, Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-direct {v0}, Lcom/android/extrasettings/users/EditUserInfoController;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    .line 153
    iput-boolean v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUpdateUserListOperate:Z

    .line 155
    new-instance v0, Lcom/android/extrasettings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/users/UserSettings$1;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/extrasettings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/users/UserSettings$2;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/users/UserSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/extrasettings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/extrasettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/extrasettings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/users/UserSettings;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/extrasettings/users/UserSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->dismissDeleteUserDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/users/UserSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/extrasettings/users/UserSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/extrasettings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/extrasettings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/extrasettings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/extrasettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/users/UserSettings;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2
    .param p1, "userType"    # I

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    .line 678
    new-instance v0, Lcom/android/extrasettings/users/UserSettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/extrasettings/users/UserSettings$12;-><init>(Lcom/android/extrasettings/users/UserSettings;I)V

    invoke-virtual {v0}, Lcom/android/extrasettings/users/UserSettings$12;->start()V

    .line 700
    monitor-exit v1

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 867
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 869
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 870
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/extrasettings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    invoke-direct {p0, p1}, Lcom/android/extrasettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 864
    :cond_0
    return-void
.end method

.method private createAndSwitchToGuestUser()V
    .locals 8

    .prologue
    .line 933
    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 934
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 935
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 936
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/extrasettings/users/UserSettings;->switchUserNow(I)V

    .line 953
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_0
    return-void

    .line 942
    :cond_2
    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_add_user"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "add_users_when_locked"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 945
    :cond_3
    const-string v4, "UserSettings"

    const-string v5, "Blocking guest creation because it is restricted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_4
    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090960

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 950
    .local v0, "guestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    .line 951
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/extrasettings/users/UserSettings;->switchUserNow(I)V

    goto :goto_0
.end method

.method private createLimitedUser()Landroid/content/pm/UserInfo;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 410
    iget-object v9, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090954

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 413
    .local v6, "newUserInfo":Landroid/content/pm/UserInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 414
    .local v8, "userId":I
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 415
    .local v7, "user":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_modify_accounts"

    invoke-virtual {v9, v10, v12, v7}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 420
    iget-object v9, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_share_location"

    invoke-virtual {v9, v10, v12, v7}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 421
    invoke-direct {p0, v6}, Lcom/android/extrasettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 424
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 425
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 426
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 427
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->addSharedAccount(Landroid/accounts/Account;Landroid/os/UserHandle;)Z

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090953

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->createSecondaryUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 436
    .local v0, "newUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 439
    :cond_0
    return-object v0
.end method

.method private dismissDeleteUserDialog()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1035
    :cond_0
    return-void
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/extrasettings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/extrasettings/drawable/CircleFramedDrawable;

    move-result-object v0

    .line 961
    .local v0, "circled":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private exitGuest()V
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->removeThisUser()V

    goto :goto_0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v3, 0x7f090940

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/extrasettings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 349
    .local v1, "myUserId":I
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 874
    const/16 v0, -0x2710

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 956
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/extrasettings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 366
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "missingIcons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 839
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/extrasettings/users/UserSettings$13;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/users/UserSettings$13;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 858
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v1, 0x7f090961

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 343
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Lcom/android/extrasettings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/users/UserSettings$3;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private onAddUserClicked(I)V
    .locals 3
    .param p1, "userType"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 384
    packed-switch p1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    monitor-exit v1

    .line 398
    return-void

    .line 386
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 389
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "newUser"    # Z

    .prologue
    .line 443
    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 444
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v2, "extras":Landroid/os/Bundle;
    const-string v0, "guest_user"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090960

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 483
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 452
    .local v11, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_2

    .line 453
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v0, "new_user"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/users/RestrictedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090998

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 460
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 462
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 463
    .restart local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    const-string v0, "show_nickname"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    :cond_3
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_4

    const v3, 0x7f090286

    .line 469
    .local v3, "titleResId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    const-class v1, Lcom/android/extrasettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 466
    .end local v3    # "titleResId":I
    :cond_4
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    const v3, 0x7f09028e

    goto :goto_1

    :cond_5
    const v3, 0x7f09028c

    goto :goto_1

    .line 472
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_6
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_0

    .line 473
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 474
    .restart local v2    # "extras":Landroid/os/Bundle;
    const-string v0, "user_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/extrasettings/SettingsActivity;

    const-class v0, Lcom/android/extrasettings/users/UserDetailsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    iget-object v8, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 403
    iput p1, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    .line 406
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/android/extrasettings/users/UserSettings;->mAddedUserId:I

    .line 487
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 666
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 667
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->removeThisUser()V

    .line 662
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->showDeleteUserDialog()V

    .line 653
    new-instance v0, Lcom/android/extrasettings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/users/UserSettings$11;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/extrasettings/users/UserSettings$11;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 882
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 883
    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 885
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mNicknamePreference:Lcom/android/extrasettings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 890
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 891
    return-void
.end method

.method private showDeleteUserDialog()V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1021
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 1022
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1024
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1029
    :cond_1
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 705
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 18

    .prologue
    .line 723
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUpdateUserListOperate:Z

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 835
    :goto_0
    return-void

    .line 725
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v16

    .line 726
    .local v16, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 728
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 732
    invoke-static {v2}, Lcom/android/extrasettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    .line 733
    .local v17, "voiceCapable":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v10, "missingIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 735
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 768
    .local v1, "pref":Landroid/preference/Preference;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/extrasettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 769
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 770
    const v3, 0x7f09093d

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 777
    :cond_2
    :goto_3
    iget-object v3, v15, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    .line 780
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 742
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 754
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_6

    if-nez v17, :cond_4

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const/4 v14, 0x1

    .line 755
    .local v14, "showSettings":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_7

    if-nez v17, :cond_7

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v12, 0x1

    .line 757
    .local v12, "showDelete":Z
    :goto_5
    new-instance v1, Lcom/android/extrasettings/users/UserPreference;

    const/4 v3, 0x0

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    if-eqz v14, :cond_8

    move-object/from16 v5, p0

    :goto_6
    if-eqz v12, :cond_9

    move-object/from16 v6, p0

    :goto_7
    invoke-direct/range {v1 .. v6}, Lcom/android/extrasettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 760
    .restart local v1    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 763
    iget v3, v15, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_5

    .line 764
    const v3, 0x7f09093f

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 766
    :cond_5
    iget-object v3, v15, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 754
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v12    # "showDelete":Z
    .end local v14    # "showSettings":Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 755
    .restart local v14    # "showSettings":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 757
    .restart local v12    # "showDelete":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 772
    .end local v12    # "showDelete":Z
    .end local v14    # "showSettings":Z
    .restart local v1    # "pref":Landroid/preference/Preference;
    :cond_a
    const v3, 0x7f09093c

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 774
    :cond_b
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    const v3, 0x7f090938

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 783
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/android/extrasettings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 787
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 792
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    if-eqz v3, :cond_f

    .line 793
    new-instance v1, Lcom/android/extrasettings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, -0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/extrasettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 795
    .restart local v1    # "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 796
    const v3, 0x7f090953

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 801
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mIsGuest:Z

    if-nez v3, :cond_14

    const/4 v13, 0x1

    .line 803
    .local v13, "showGuestPreference":Z
    :goto_8
    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_add_user"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 804
    const/4 v13, 0x0

    .line 806
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 807
    .restart local v15    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 808
    const/4 v13, 0x1

    .line 813
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    :cond_11
    if-eqz v13, :cond_12

    .line 815
    new-instance v1, Lcom/android/extrasettings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, -0xb

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v3, :cond_15

    if-eqz v17, :cond_15

    move-object/from16 v7, p0

    :goto_9
    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/extrasettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 819
    .restart local v1    # "pref":Landroid/preference/Preference;
    const v3, 0x7f090960

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 821
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 825
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 828
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 829
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/extrasettings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 831
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v11

    .line 832
    .local v11, "moreUsers":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/extrasettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 834
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/extrasettings/users/UserSettings;->mUpdateUserListOperate:Z

    goto/16 :goto_0

    .line 801
    .end local v11    # "moreUsers":Z
    .end local v13    # "showGuestPreference":Z
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 815
    .restart local v13    # "showGuestPreference":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1006
    const v0, 0x7f090ae0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 373
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->addUserNow(I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/extrasettings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/extrasettings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/extrasettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 968
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 980
    .end local v0    # "userId":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 970
    .restart local v0    # "userId":I
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUpdateUserListOperate:Z

    if-nez v1, :cond_0

    .line 973
    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 976
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/extrasettings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x7f10015d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    if-eqz p1, :cond_2

    .line 194
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddedUserId:I

    .line 197
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 203
    .local v1, "context":Landroid/content/Context;
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 204
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-le v0, v6, :cond_5

    move v11, v6

    .line 205
    .local v11, "hasMultipleUsers":Z
    :goto_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    :cond_4
    iput-boolean v8, p0, Lcom/android/extrasettings/users/UserSettings;->mEnabled:Z

    .line 245
    :goto_1
    return-void

    .end local v11    # "hasMultipleUsers":Z
    :cond_5
    move v11, v8

    .line 204
    goto :goto_0

    .line 211
    .restart local v11    # "hasMultipleUsers":Z
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 212
    .local v3, "myUserId":I
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsGuest:Z

    .line 214
    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 215
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 216
    new-instance v0, Lcom/android/extrasettings/users/UserPreference;

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/extrasettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 219
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const-string v4, "user_me"

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v4, 0x7f09093f

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 224
    :cond_7
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    .line 225
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_8

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_add_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    :cond_8
    const-string v0, "user_add"

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 239
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->loadProfile()V

    .line 240
    invoke-virtual {p0, v6}, Lcom/android/extrasettings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 241
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lcom/android/extrasettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 230
    .end local v7    # "filter":Landroid/content/IntentFilter;
    :cond_a
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 234
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v1}, Lcom/android/extrasettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    :cond_b
    iput-boolean v8, p0, Lcom/android/extrasettings/users/UserSettings;->mCanAddRestrictedProfile:Z

    .line 236
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    const v4, 0x7f090937

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23
    .param p1, "dialogId"    # I

    .prologue
    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 504
    .local v17, "context":Landroid/content/Context;
    if-nez v17, :cond_0

    const/16 v18, 0x0

    .line 643
    :goto_0
    return-object v18

    .line 505
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 643
    const/16 v18, 0x0

    goto :goto_0

    .line 507
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/extrasettings/users/UserSettings$4;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-static {v5, v7, v8}, Lcom/android/extrasettings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v18

    .line 515
    .local v18, "dlg":Landroid/app/Dialog;
    goto :goto_0

    .line 518
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09094f

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    goto :goto_0

    .line 523
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 525
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "key_add_user_long_message_displayed"

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 527
    .local v19, "longMessageDisplayed":Z
    if-eqz v19, :cond_1

    const v20, 0x7f090949

    .line 530
    .local v20, "messageResId":I
    :goto_1
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    const/16 v22, 0x1

    .line 532
    .local v22, "userType":I
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090947

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x104000a

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$5;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/extrasettings/users/UserSettings$5;-><init>(Lcom/android/extrasettings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 547
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 527
    .end local v18    # "dlg":Landroid/app/Dialog;
    .end local v20    # "messageResId":I
    .end local v22    # "userType":I
    :cond_1
    const v20, 0x7f090948

    goto :goto_1

    .line 530
    .restart local v20    # "messageResId":I
    :cond_2
    const/16 v22, 0x2

    goto :goto_2

    .line 550
    .end local v19    # "longMessageDisplayed":Z
    .end local v20    # "messageResId":I
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09094a

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f09094b

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f09094d

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/extrasettings/users/UserSettings$6;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f09094e

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 561
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 564
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09094c

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x104000a

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/extrasettings/users/UserSettings$7;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 574
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 577
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v6, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 579
    .local v15, "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "title"

    const v7, 0x7f090945

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/extrasettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v5, "summary"

    const v7, 0x7f090943

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/extrasettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v14, "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "title"

    const v7, 0x7f090946

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/extrasettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v5, "summary"

    const v7, 0x7f090944

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/extrasettings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v16, Landroid/app/AlertDialog$Builder;

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    .local v16, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0400e1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "title"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "summary"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 591
    .local v4, "adapter":Landroid/widget/SimpleAdapter;
    const v5, 0x7f090942

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 592
    new-instance v5, Lcom/android/extrasettings/users/UserSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/extrasettings/users/UserSettings$8;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    goto/16 :goto_0

    .line 604
    .end local v4    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v6    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "addProfileItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "addUserItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09093a

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f09093b

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/extrasettings/users/UserSettings$9;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 615
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 618
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090962

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f090963

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f090964

    new-instance v8, Lcom/android/extrasettings/users/UserSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/extrasettings/users/UserSettings$10;-><init>(Lcom/android/extrasettings/users/UserSettings;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v7, 0x1040000

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 630
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 633
    .end local v18    # "dlg":Landroid/app/Dialog;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const v11, 0x7f09028e

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v8, p0

    move-object/from16 v12, p0

    invoke-virtual/range {v7 .. v13}, Lcom/android/extrasettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/extrasettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object v18

    .line 640
    .restart local v18    # "dlg":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 587
    :array_0
    .array-data 4
        0x7f100043
        0x7f100056
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 284
    .local v5, "um":Landroid/os/UserManager;
    iget-boolean v8, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-nez v8, :cond_0

    const-string v8, "no_remove_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 285
    iget-object v8, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "nickname":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090951

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v1, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v6, v2, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 288
    .local v4, "removeThisUser":Landroid/view/MenuItem;
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v2, v3

    .line 290
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "removeThisUser":Landroid/view/MenuItem;
    .restart local v2    # "pos":I
    :cond_0
    iget-boolean v8, p0, Lcom/android/extrasettings/users/UserSettings;->mIsOwner:Z

    if-eqz v8, :cond_1

    const-string v8, "no_add_user"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 291
    const/4 v8, 0x2

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    const v9, 0x7f090952

    invoke-interface {p1, v7, v8, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 293
    .local v0, "allowAddOnLockscreen":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 294
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "add_users_when_locked"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_2

    :goto_0
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move v2, v3

    .line 297
    .end local v0    # "allowAddOnLockscreen":Landroid/view/MenuItem;
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 298
    return-void

    .end local v2    # "pos":I
    .restart local v0    # "allowAddOnLockscreen":Landroid/view/MenuItem;
    .restart local v3    # "pos":I
    :cond_2
    move v6, v7

    .line 294
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 261
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 498
    invoke-virtual {p0, p0}, Lcom/android/extrasettings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 499
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 984
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mAddingUser:Z

    .line 986
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    .line 987
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->updateUserList()V

    .line 988
    monitor-exit v1

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1017
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 303
    .local v1, "itemId":I
    if-ne v1, v4, :cond_0

    .line 304
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/extrasettings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 313
    :goto_0
    return v4

    .line 306
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    .line 308
    .local v0, "isChecked":Z
    invoke-virtual {p0}, Lcom/android/extrasettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "add_users_when_locked"

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v2, v4

    .line 308
    goto :goto_1

    .line 313
    .end local v0    # "isChecked":Z
    :cond_3
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 993
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mNicknamePreference:Lcom/android/extrasettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 994
    check-cast v0, Ljava/lang/String;

    .line 995
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/users/UserSettings;->mNicknamePreference:Lcom/android/extrasettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 997
    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 999
    :cond_0
    const/4 v1, 0x1

    .line 1001
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 895
    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v4, :cond_3

    .line 896
    iget-boolean v4, p0, Lcom/android/extrasettings/users/UserSettings;->mIsGuest:Z

    if-eqz v4, :cond_0

    .line 897
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    .line 929
    .end local p1    # "pref":Landroid/preference/Preference;
    :goto_0
    return v2

    .line 901
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/users/UserSettings;->onManageUserClicked(IZ)V

    .end local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move v2, v3

    .line 929
    goto :goto_0

    .line 904
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 906
    :cond_3
    instance-of v4, p1, Lcom/android/extrasettings/users/UserPreference;

    if-eqz v4, :cond_6

    .line 907
    check-cast p1, Lcom/android/extrasettings/users/UserPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/extrasettings/users/UserPreference;->getUserId()I

    move-result v1

    .line 908
    .local v1, "userId":I
    const/16 v2, -0xb

    if-ne v1, v2, :cond_4

    .line 909
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->createAndSwitchToGuestUser()V

    goto :goto_1

    .line 912
    :cond_4
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 913
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v0}, Lcom/android/extrasettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 914
    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 917
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/extrasettings/users/UserSettings;->switchUserNow(I)V

    goto :goto_1

    .line 920
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/extrasettings/users/UserSettings;->mAddUser:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    .line 923
    iget-boolean v4, p0, Lcom/android/extrasettings/users/UserSettings;->mCanAddRestrictedProfile:Z

    if-eqz v4, :cond_7

    .line 924
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 926
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/extrasettings/users/UserSettings;->onAddUserClicked(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 251
    iget-boolean v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEnabled:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->loadProfile()V

    .line 254
    invoke-direct {p0}, Lcom/android/extrasettings/users/UserSettings;->updateUserList()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/extrasettings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings;->mEditUserInfoController:Lcom/android/extrasettings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/extrasettings/users/EditUserInfoController;->startingActivityForResult()V

    .line 277
    invoke-super {p0, p1, p2}, Lcom/android/extrasettings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    return-void
.end method
