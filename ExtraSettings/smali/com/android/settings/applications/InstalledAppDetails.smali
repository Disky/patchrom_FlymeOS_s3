.class public Lcom/android/extrasettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/extrasettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private checkChangedFlag:Z

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDycSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExtStoragePath:Ljava/lang/String;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalCodeSizeLabel:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mExternalDataSizeLabel:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mIntent:Landroid/content/Intent;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mLaunchButton:Landroid/widget/Button;

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mSDcardDescription:Ljava/lang/String;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/extrasettings/applications/ApplicationsState;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 178
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 179
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 180
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 181
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 182
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 183
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 184
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 220
    new-instance v0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 541
    new-instance v0, Lcom/android/extrasettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 1495
    new-instance v0, Lcom/android/extrasettings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$4;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1554
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 1733
    new-instance v0, Lcom/android/extrasettings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$5;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/applications/InstalledAppDetails;)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refeshUi2SD()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/applications/InstalledAppDetails;)Lcom/android/extrasettings/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initDataButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/extrasettings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/extrasettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/extrasettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/extrasettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/InstalledAppDetails;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1512
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- mDpm.packageHasActiveAdmins(mPackageInfo.packageName"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-direct {p0, v6}, Lcom/android/extrasettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1531
    :goto_0
    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 1519
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop,(mAppEntry.info.flags&ApplicationInfo.FLAG_STOPPED) == 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-direct {p0, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1522
    :cond_1
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- sendOrderedBroadcast"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1525
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1526
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1527
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1484
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1486
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1487
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/extrasettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1488
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/extrasettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 1489
    .local v1, "newEnt":Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 1490
    iput-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    .line 1492
    :cond_0
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1493
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 335
    const-string v0, ""

    :goto_0
    return-object v0

    .line 323
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905da

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1576
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1582
    :goto_0
    return v0

    .line 1579
    :catch_0
    move-exception v0

    .line 1582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1698
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1699
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v3

    .line 1700
    .local v1, "len":I
    const-string v2, ""

    .line 1701
    .local v2, "sdDesc":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1702
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1703
    aget-object v4, v3, v0

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1709
    :cond_0
    return-object v2

    .line 1706
    :cond_1
    const-string v2, "error"

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 269
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v4, 0x7f09059c

    .line 376
    const/4 v0, 0x0

    .line 380
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/extrasettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 400
    :goto_0
    return v0

    .line 385
    :cond_1
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->disableAppList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->disableAppList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDisableAppsList contains :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 390
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_3

    .line 393
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    :cond_3
    const v1, 0x7f09059d

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 397
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 5

    .prologue
    const v4, 0x7f09059e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 285
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iput-boolean v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 315
    :goto_0
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    :cond_1
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0905b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is not mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 297
    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    iput-boolean v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_INTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_4
    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    iput-boolean v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanClearData:Z

    goto :goto_1

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 10

    .prologue
    const v9, 0x7f090134

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->isExSdcardInserted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x0

    .line 347
    .local v0, "dataOnly":Z
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_3

    move v0, v3

    .line 348
    :goto_1
    const/4 v2, 0x1

    .line 349
    .local v2, "moveDisable":Z
    if-eqz v0, :cond_4

    .line 350
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0905d5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 367
    :goto_2
    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_7

    .line 368
    :cond_2
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v2    # "moveDisable":Z
    :cond_3
    move v0, v4

    .line 347
    goto :goto_1

    .line 351
    .restart local v2    # "moveDisable":Z
    :cond_4
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "internalStorage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const/4 v2, 0x0

    .line 359
    goto :goto_2

    .line 361
    .end local v1    # "internalStorage":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;->init()V

    .line 365
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    :goto_3
    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_3

    .line 370
    :cond_7
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 477
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 479
    .local v0, "enabled":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 484
    :goto_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 485
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2, v3}, Lcom/android/extrasettings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 494
    :goto_1
    return-void

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_1

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 492
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 481
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f090599

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 404
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 405
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v3, v6

    .line 406
    .local v3, "isBundled":Z
    :goto_1
    const/4 v1, 0x1

    .line 407
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_9

    .line 408
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v9, 0x7f09059f

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 409
    const/4 v4, 0x0

    .line 410
    .local v4, "showSpecialDisable":Z
    if-eqz v3, :cond_0

    .line 411
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 412
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_0
    iget-boolean v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_1

    .line 415
    const/4 v4, 0x0

    .line 417
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v4, :cond_8

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    .end local v4    # "showSpecialDisable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    const/4 v1, 0x0

    .line 445
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 446
    if-eqz v3, :cond_c

    .line 447
    const/4 v1, 0x0

    .line 463
    :cond_3
    :goto_4
    iget-boolean v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_4

    .line 464
    const/4 v1, 0x0

    .line 467
    :cond_4
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    if-eqz v1, :cond_5

    .line 470
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    :cond_5
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_6
    move v5, v7

    .line 404
    goto :goto_0

    :cond_7
    move v3, v7

    .line 405
    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    .restart local v4    # "showSpecialDisable":Z
    :cond_8
    move v5, v8

    .line 417
    goto :goto_2

    .line 419
    .end local v4    # "showSpecialDisable":Z
    :cond_9
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 420
    if-eqz v3, :cond_a

    .line 421
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_3

    .line 422
    :cond_a
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v5, v8

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_b

    .line 427
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 428
    const/4 v1, 0x0

    goto :goto_3

    .line 430
    :cond_b
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 449
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 451
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_e

    .line 454
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v6, :cond_d

    move v1, v6

    :goto_5
    goto :goto_4

    :cond_d
    move v1, v7

    goto :goto_5

    .line 458
    :cond_e
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    move v1, v6

    :goto_6
    goto :goto_4

    :cond_f
    move v1, v7

    goto :goto_6
.end method

.method private initiateClearUserData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1291
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1293
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1294
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 1296
    new-instance v3, Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1300
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 1301
    .local v2, "res":Z
    if-nez v2, :cond_1

    .line 1303
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1308
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0905bd

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1237
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1238
    .local v2, "result":I
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1240
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f09059e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 1241
    if-ne v2, v6, :cond_0

    .line 1242
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1245
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, "packageDataCleared":Landroid/content/Intent;
    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1253
    .end local v0    # "packageDataCleared":Landroid/content/Intent;
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1254
    return-void

    .line 1250
    :cond_0
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to clear user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1271
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1272
    .local v1, "result":I
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved package result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1275
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1276
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1277
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1283
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1284
    return-void

    .line 1281
    :cond_0
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refeshUi2SD()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    .line 1746
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1747
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1748
    return-void
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1257
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1258
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1259
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1260
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1261
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1268
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0905d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1265
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1266
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1160
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1162
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1163
    iget-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1164
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    :cond_1
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1170
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1226
    :goto_0
    iget-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 1227
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1228
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1230
    :cond_2
    return-void

    .line 1173
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1174
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1175
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1176
    .local v4, "dataSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1177
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 1178
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1189
    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 1190
    iput-wide v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1192
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 1193
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    :cond_5
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    .line 1197
    iput-wide v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1199
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 1200
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :cond_6
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1204
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    .line 1205
    iput-wide v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1206
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    :cond_7
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 1209
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1210
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    :cond_8
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_c

    .line 1214
    :cond_9
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1219
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_d

    .line 1220
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1180
    .end local v0    # "cacheSize":J
    :cond_a
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b

    .line 1181
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1182
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    :cond_b
    iget-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1185
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1186
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1216
    .restart local v0    # "cacheSize":J
    :cond_c
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1217
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1222
    :cond_d
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1223
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshSizeLabel(Ljava/lang/String;)V
    .locals 6
    .param p1, "sdDesc"    # Ljava/lang/String;

    .prologue
    .line 1715
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090595

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, "appSizeLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090597

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "dataSizeLabel":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_0

    .line 1721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, "labelStr1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1727
    .local v3, "labelStr2":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1729
    return-void

    .line 1724
    .end local v2    # "labelStr1":Ljava/lang/String;
    .end local v3    # "labelStr2":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1725
    .restart local v2    # "labelStr1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "labelStr2":Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshUi()Z
    .locals 49

    .prologue
    .line 868
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 869
    const/16 v44, 0x1

    .line 1105
    :goto_0
    return v44

    .line 871
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v28

    .line 873
    .local v28, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 874
    const/16 v44, 0x0

    goto :goto_0

    .line 877
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    if-nez v44, :cond_2

    .line 878
    const/16 v44, 0x0

    goto :goto_0

    .line 882
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v23, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->clear()V

    .line 885
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    .line 886
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/ResolveInfo;

    .line 887
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 888
    .local v6, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 891
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    .line 892
    .local v27, "metadata":Landroid/os/Bundle;
    if-eqz v27, :cond_3

    .line 893
    const-string v44, "android.app.home.alternate"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 894
    .local v26, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6}, Lcom/android/extrasettings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 885
    .end local v26    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 901
    .end local v6    # "activityPkg":Ljava/lang/String;
    .end local v27    # "metadata":Landroid/os/Bundle;
    .end local v36    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .local v33, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v25, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 908
    const/16 v22, 0x0

    .line 910
    .local v22, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 916
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v21

    .line 919
    .local v21, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f1000d3

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 920
    .local v15, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f1000d4

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 921
    .local v16, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v44

    if-gtz v44, :cond_6

    if-eqz v22, :cond_8

    :cond_6
    const/4 v14, 0x1

    .line 922
    .local v14, "autoLaunchEnabled":Z
    :goto_3
    if-nez v14, :cond_9

    if-nez v21, :cond_9

    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 962
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    if-eqz v44, :cond_12

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    const/high16 v45, 0x10000000

    invoke-virtual/range {v44 .. v45}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    const/high16 v45, 0x200000

    invoke-virtual/range {v44 .. v45}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const-string v45, "activity"

    invoke-virtual/range {v44 .. v45}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 977
    .local v10, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 988
    .local v18, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->setVisibility(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f1000dc

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 993
    .local v30, "permsView":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 994
    .local v12, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v34

    .line 998
    .local v34, "premiumSmsPermission":I
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-gtz v44, :cond_7

    if-eqz v34, :cond_13

    .line 1000
    :cond_7
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1005
    :goto_6
    const v44, 0x7f1000dd

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1007
    .local v38, "securityBillingDesc":Landroid/widget/TextView;
    const v44, 0x7f1000de

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    .line 1009
    .local v39, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_14

    .line 1011
    const/16 v44, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1013
    const v44, 0x7f1000df

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Spinner;

    .line 1015
    .local v41, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const v45, 0x7f0b0033

    const v46, 0x1090008

    invoke-static/range {v44 .. v46}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 1018
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v44, 0x1090009

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1019
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1021
    add-int/lit8 v44, v34, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1022
    new-instance v44, Lcom/android/extrasettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1030
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v41    # "spinner":Landroid/widget/Spinner;
    :goto_7
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-lez v44, :cond_17

    .line 1032
    const v44, 0x7f1000e1

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 1034
    .local v40, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1035
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v29

    .line 1039
    .local v29, "packages":[Ljava/lang/String;
    if-eqz v29, :cond_17

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_17

    .line 1040
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v32, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v24, 0x0

    :goto_8
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_16

    .line 1042
    aget-object v31, v29, v24

    .line 1043
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 1041
    :goto_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 913
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .end local v14    # "autoLaunchEnabled":Z
    .end local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v16    # "autoLaunchView":Landroid/widget/TextView;
    .end local v18    # "compatMode":I
    .end local v21    # "hasBindAppWidgetPermission":Z
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v30    # "permsView":Landroid/widget/LinearLayout;
    .end local v31    # "pkg":Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "premiumSmsPermission":I
    .end local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v20

    .line 914
    .local v20, "e":Landroid/os/RemoteException;
    const-string v44, "InstalledAppDetails"

    const-string v45, "mUsbManager.hasDefaults"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 921
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v16    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v21    # "hasBindAppWidgetPermission":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 925
    .restart local v14    # "autoLaunchEnabled":Z
    :cond_9
    if-eqz v21, :cond_e

    if-eqz v14, :cond_e

    const/16 v43, 0x1

    .line 927
    .local v43, "useBullets":Z
    :goto_a
    if-eqz v21, :cond_f

    .line 928
    const v44, 0x7f09058c

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 933
    :goto_b
    const/16 v42, 0x0

    .line 934
    .local v42, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0e000f

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 936
    .local v17, "bulletIndent":I
    if-eqz v14, :cond_b

    .line 937
    const v44, 0x7f0905a0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 938
    .local v13, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 939
    .local v37, "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_a

    .line 940
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 942
    :cond_a
    if-nez v42, :cond_10

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 945
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_b
    :goto_c
    if-eqz v21, :cond_d

    .line 946
    const v44, 0x7f0905a1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 948
    .local v9, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 949
    .restart local v37    # "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_c

    .line 950
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 953
    :cond_c
    if-nez v42, :cond_11

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 956
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_d
    :goto_d
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 925
    .end local v17    # "bulletIndent":I
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_e
    const/16 v43, 0x0

    goto/16 :goto_a

    .line 930
    .restart local v43    # "useBullets":Z
    :cond_f
    const v44, 0x7f09058b

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 942
    .restart local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v17    # "bulletIndent":I
    .restart local v37    # "s":Landroid/text/SpannableString;
    .restart local v42    # "text":Ljava/lang/CharSequence;
    :cond_10
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto/16 :goto_c

    .line 953
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_11
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto :goto_d

    .line 970
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "bulletIndent":I
    .end local v37    # "s":Landroid/text/SpannableString;
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1002
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .restart local v18    # "compatMode":I
    .restart local v30    # "permsView":Landroid/widget/LinearLayout;
    .restart local v34    # "premiumSmsPermission":I
    :cond_13
    const/16 v44, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1026
    .restart local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_14
    const/16 v44, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    const/16 v44, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 1047
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v31    # "pkg":Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1048
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    .line 1049
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v44

    goto/16 :goto_9

    .line 1052
    .end local v31    # "pkg":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1053
    .local v5, "N":I
    if-lez v5, :cond_17

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1056
    .local v35, "res":Landroid/content/res/Resources;
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_19

    .line 1057
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1070
    .local v11, "appListStr":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f1000e0

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1072
    .local v19, "descr":Landroid/widget/TextView;
    const v44, 0x7f0905ca

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v19    # "descr":Landroid/widget/TextView;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v44, v0

    if-nez v44, :cond_1e

    .line 1085
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-nez v44, :cond_1d

    const/16 v44, 0x1

    :goto_f
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1105
    :cond_18
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 1058
    .restart local v5    # "N":I
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v35    # "res":Landroid/content/res/Resources;
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_19
    const/16 v44, 0x2

    move/from16 v0, v44

    if-ne v5, v0, :cond_1a

    .line 1059
    const v44, 0x7f0905cb

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "appListStr":Ljava/lang/String;
    goto/16 :goto_e

    .line 1062
    .end local v11    # "appListStr":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v44, v5, -0x2

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1063
    .restart local v11    # "appListStr":Ljava/lang/String;
    add-int/lit8 v24, v5, -0x3

    :goto_10
    if-ltz v24, :cond_1c

    .line 1064
    if-nez v24, :cond_1b

    const v44, 0x7f0905cd

    :goto_11
    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1063
    add-int/lit8 v24, v24, -0x1

    goto :goto_10

    .line 1064
    :cond_1b
    const v44, 0x7f0905ce

    goto :goto_11

    .line 1067
    :cond_1c
    const v44, 0x7f0905cc

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v11, v45, v46

    const/16 v46, 0x1

    add-int/lit8 v47, v5, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_e

    .line 1086
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_1d
    const/16 v44, 0x0

    goto/16 :goto_f

    .line 1091
    :cond_1e
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x2200

    invoke-virtual/range {v44 .. v46}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1094
    .restart local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v44, v0

    if-nez v44, :cond_18

    .line 1098
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-eqz v44, :cond_1f

    const/16 v44, 0x1

    goto/16 :goto_0

    :cond_1f
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 1100
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v20

    .line 1101
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 1145
    const v0, 0x7f09058b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1146
    const v0, 0x7f0905a2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1149
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 825
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 827
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 829
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 830
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 833
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/extrasettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    .line 834
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 837
    :try_start_0
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 825
    goto :goto_0

    .line 827
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 841
    :catch_0
    move-exception v1

    .line 842
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 845
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 13
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 684
    :try_start_0
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f100015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 685
    .local v0, "appSnippet":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 687
    const v7, 0x7f100010

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 688
    .local v3, "icon":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v7, v8}, Lcom/android/extrasettings/applications/ApplicationsState;->ensureIcon(Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;)V

    .line 689
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 693
    .local v2, "finalPackageName":Ljava/lang/String;
    new-instance v7, Lcom/android/extrasettings/applications/InstalledAppDetails$3;

    invoke-direct {v7, p0, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails$3;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    const v7, 0x7f100011

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 707
    .local v4, "label":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    const v7, 0x7f1000f3

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 710
    .local v6, "packagePath":Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 712
    .local v5, "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 716
    :goto_0
    :try_start_2
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    const v7, 0x7f1000f4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 721
    if-eqz p1, :cond_0

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 722
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0905d4

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    .end local v0    # "appSnippet":Landroid/view/View;
    .end local v2    # "finalPackageName":Ljava/lang/String;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packagePath":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 713
    .restart local v0    # "appSnippet":Landroid/view/View;
    .restart local v2    # "finalPackageName":Ljava/lang/String;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "label":Landroid/widget/TextView;
    .restart local v5    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "packagePath":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 714
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 728
    .end local v0    # "appSnippet":Landroid/view/View;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "finalPackageName":Ljava/lang/String;
    .end local v3    # "icon":Landroid/widget/ImageView;
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packagePath":Landroid/widget/TextView;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 726
    .restart local v0    # "appSnippet":Landroid/view/View;
    .restart local v2    # "finalPackageName":Ljava/lang/String;
    .restart local v3    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "label":Landroid/widget/TextView;
    .restart local v5    # "mApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "packagePath":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 1153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/SettingsActivity;

    .line 1156
    .local v1, "sa":Lcom/android/extrasettings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/extrasettings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1157
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1557
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1558
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1561
    .local v2, "nm":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1562
    .local v0, "enable":Z
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v6, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 1564
    if-eq v0, p1, :cond_0

    .line 1565
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 1566
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1567
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkChangedFlag:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v1

    .line 1570
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1311
    invoke-static {p1, p2}, Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/extrasettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 1312
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1315
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :goto_0
    return-void

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "ignored":Ljava/lang/IllegalStateException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "IllegalStateException exception but ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 853
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 856
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 857
    const/4 v1, 0x1

    .line 864
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 859
    :catch_0
    move-exception v1

    .line 864
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1477
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1478
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1479
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1480
    iput-boolean p3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1481
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1509
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 659
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 660
    if-ne p1, v5, :cond_1

    .line 661
    iget-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 662
    iput-boolean v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 667
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 668
    new-instance v2, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    invoke-direct {p0, v5, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 679
    :cond_1
    return-void

    .line 672
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1675
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1676
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1678
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1679
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1681
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1683
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1685
    iget-boolean v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->checkChangedFlag:Z

    if-nez v4, :cond_0

    .line 1688
    if-nez p2, :cond_4

    .line 1689
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1691
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1590
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1591
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    .line 1592
    const-string v7, "InstalledAppDetails"

    const-string v8, "click uninstall button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-boolean v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    .line 1594
    invoke-direct {p0, v4, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 1597
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    .line 1598
    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1600
    :cond_2
    new-instance v7, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/extrasettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1604
    :cond_3
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    .line 1605
    invoke-direct {p0, v5, v6, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1607
    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1610
    :cond_5
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    .line 1611
    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1612
    :cond_6
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 1613
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v6, :cond_0

    .line 1614
    const-string v6, "InstalledAppDetails"

    const-string v7, "click activiies button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1617
    :try_start_0
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :goto_1
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1622
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f1000d3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1624
    .local v0, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f1000d4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1625
    .local v1, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v0, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1618
    .end local v0    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v1    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 1619
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1627
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 1628
    const-string v7, "InstalledAppDetails"

    const-string v8, "click clear data button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1630
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1631
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    invoke-virtual {p0, v3, v4}, Lcom/android/extrasettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1637
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1639
    :cond_9
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    .line 1640
    const-string v6, "InstalledAppDetails"

    const-string v7, "click clear cache button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    .line 1643
    new-instance v6, Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1645
    :cond_a
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1646
    :cond_b
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 1647
    const-string v6, "InstalledAppDetails"

    const-string v7, "click force stop button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/extrasettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1650
    :cond_c
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_f

    .line 1651
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    .line 1652
    new-instance v7, Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1654
    :cond_d
    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    .line 1656
    .local v4, "moveFlags":I
    :cond_e
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "click move app button , and the move flag is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iput-boolean v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1658
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1659
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/extrasettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 1660
    .end local v4    # "moveFlags":I
    :cond_f
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    .line 1661
    const-string v6, "InstalledAppDetails"

    const-string v7, "click launch button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :try_start_1
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 1664
    iget-object v6, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/extrasettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1666
    :catch_1
    move-exception v2

    .line 1667
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900ce

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 501
    const-string v2, "InstalledAppDetails"

    const-string v3, "onCreate() begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/android/extrasettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const-string v2, "InstalledAppDetails"

    const-string v3, "monkey is running, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/extrasettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/extrasettings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    .line 508
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/extrasettings/applications/ApplicationsState;->newSession(Lcom/android/extrasettings/applications/ApplicationsState$Callbacks;)Lcom/android/extrasettings/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    .line 509
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 510
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 511
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 512
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 513
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 514
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 515
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 517
    new-instance v2, Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/extrasettings/applications/CanBeOnSdCardChecker;

    .line 520
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->resume()V

    .line 522
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 524
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 527
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 528
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    .line 529
    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    .line 531
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v2, :cond_1

    .line 532
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 533
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.SD_SWAP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const-string v2, "InstalledAppDetails"

    const-string v3, "onCreate() end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    const v0, 0x7f09059a

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 626
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f1001eb

    const v9, 0x7f1001ea

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 554
    const v5, 0x7f040064

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 555
    .local v4, "view":Landroid/view/View;
    const-string v5, "InstalledAppDetails"

    const-string v6, "onCreateView() begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const v5, 0x7f100014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 557
    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/extrasettings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 559
    iput-object v4, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 560
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0905d1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 563
    const v5, 0x7f1000c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 564
    const v5, 0x7f1000c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 565
    const v5, 0x7f1000c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 566
    const v5, 0x7f1000c6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 567
    const v5, 0x7f1000cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 569
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 575
    :cond_0
    const v5, 0x7f1000c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    .line 576
    const v5, 0x7f1000ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    .line 577
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    .line 581
    const v5, 0x7f1000bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 582
    .local v1, "btnPanel":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 583
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v6, 0x7f090593

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 584
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 585
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 588
    const v5, 0x7f1000be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 589
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 591
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 594
    const v5, 0x7f1000cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 595
    const v5, 0x7f1000cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 598
    const v5, 0x7f1000d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 599
    const v5, 0x7f1000d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 601
    const v5, 0x7f1000d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 604
    const v5, 0x7f1000d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 605
    const v5, 0x7f1000da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 606
    const v5, 0x7f1000db

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 608
    const v5, 0x7f1000bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 611
    const v5, 0x7f1000d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    .line 612
    const v5, 0x7f1000d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 613
    .local v2, "c":Landroid/view/View;
    const v5, 0x7f1000d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 614
    .local v3, "t":Landroid/view/View;
    iget-object v5, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 615
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 618
    const-string v5, "InstalledAppDetails"

    const-string v6, "onCreateView() end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 763
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroy() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 766
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 769
    :cond_0
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_2SDCARD_SWAP:Z

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 772
    :cond_1
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroy() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroyView() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 757
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->release()V

    .line 758
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroyView() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 649
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 650
    .local v0, "menuId":I
    if-ne v0, v1, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 654
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 787
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPackageListChanged , not resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->resume()V

    .line 796
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    invoke-direct {p0, v1, v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPackageSizeChanged not resumed,not refresh size info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 747
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPause() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 749
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->pause()V

    .line 750
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPause() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 630
    const/4 v0, 0x1

    .line 631
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 632
    const/4 v0, 0x0

    .line 644
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    return-void

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 634
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_2
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 636
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :cond_3
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 638
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 639
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 640
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :cond_6
    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 642
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 734
    const-string v0, "InstalledAppDetails"

    const-string v1, "onResume() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 737
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 738
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails;->mSession:Lcom/android/extrasettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ApplicationsState$Session;->resume()V

    .line 739
    invoke-direct {p0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-direct {p0, v2, v2}, Lcom/android/extrasettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 742
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v1, "onResume() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 821
    return-void
.end method
