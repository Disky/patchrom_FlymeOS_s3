.class public Lcom/android/extrasettings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/extrasettings/applications/RunningState$MergedItem;,
        Lcom/android/extrasettings/applications/RunningState$ProcessItem;,
        Lcom/android/extrasettings/applications/RunningState$ServiceItem;,
        Lcom/android/extrasettings/applications/RunningState$BaseItem;,
        Lcom/android/extrasettings/applications/RunningState$UserState;,
        Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;,
        Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/extrasettings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field mBackgroundProcessSwapMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/extrasettings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/extrasettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/extrasettings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/extrasettings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/extrasettings/applications/InterestingConfigChanges;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/extrasettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 153
    iput v1, p0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    .line 155
    new-instance v0, Lcom/android/extrasettings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/RunningState$1;-><init>(Lcom/android/extrasettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Lcom/android/extrasettings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/RunningState$2;-><init>(Lcom/android/extrasettings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 761
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 762
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 763
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 764
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    .line 765
    iget v0, p0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHideManagedProfiles:Z

    .line 766
    iput-boolean v1, p0, Lcom/android/extrasettings/applications/RunningState;->mResumed:Z

    .line 767
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 768
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 769
    new-instance v0, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/extrasettings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    .line 770
    return-void

    :cond_0
    move v0, v1

    .line 765
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/extrasettings/applications/RunningState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/applications/RunningState;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/extrasettings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/applications/RunningState;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActivityManager;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/extrasettings/applications/RunningState$MergedItem;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    iget v4, p4, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 850
    .local v2, "userItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v5, p0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 851
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 852
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v5, p4, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/extrasettings/applications/RunningState$UserState;

    .line 853
    .local v3, "userState":Lcom/android/extrasettings/applications/RunningState$UserState;
    if-eqz v3, :cond_3

    iget-object v1, v3, Lcom/android/extrasettings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 855
    .local v1, "info":Landroid/content/pm/UserInfo;
    :goto_1
    if-nez v1, :cond_4

    .line 878
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v3    # "userState":Lcom/android/extrasettings/applications/RunningState$UserState;
    :cond_1
    :goto_2
    return-void

    .line 850
    .end local v0    # "first":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 853
    .restart local v0    # "first":Z
    .restart local v3    # "userState":Lcom/android/extrasettings/applications/RunningState$UserState;
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v5, p4, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_1

    .line 859
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-boolean v4, p0, Lcom/android/extrasettings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 862
    :cond_5
    if-nez v2, :cond_8

    .line 863
    new-instance v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v4}, Lcom/android/extrasettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 864
    .restart local v2    # "userItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 868
    :goto_3
    iget v4, p0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    iput v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 869
    if-nez v3, :cond_6

    .line 870
    new-instance v4, Lcom/android/extrasettings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/extrasettings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    .line 871
    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/extrasettings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 872
    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    iget-object v5, p0, Lcom/android/extrasettings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v5, v1}, Lcom/android/extrasettings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/extrasettings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 873
    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUser:Lcom/android/extrasettings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/extrasettings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/extrasettings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 875
    :cond_6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v3    # "userState":Lcom/android/extrasettings/applications/RunningState$UserState;
    :cond_7
    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 866
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    .restart local v3    # "userState":Lcom/android/extrasettings/applications/RunningState$UserState;
    :cond_8
    iget-object v4, v2, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/extrasettings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 751
    sget-object v1, Lcom/android/extrasettings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    :try_start_0
    sget-object v0, Lcom/android/extrasettings/applications/RunningState;->sInstance:Lcom/android/extrasettings/applications/RunningState;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Lcom/android/extrasettings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/extrasettings/applications/RunningState;->sInstance:Lcom/android/extrasettings/applications/RunningState;

    .line 755
    :cond_0
    sget-object v0, Lcom/android/extrasettings/applications/RunningState;->sInstance:Lcom/android/extrasettings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v0, 0x1

    .line 824
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 834
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 734
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 736
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 737
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 747
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 742
    :cond_2
    move-object v0, p1

    .line 743
    .local v0, "label":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 744
    .local v1, "tail":I
    if-ltz v1, :cond_1

    .line 745
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 839
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 840
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 841
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 842
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 843
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 844
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 845
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 70
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 881
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    .line 883
    .local v47, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    add-int/lit8 v66, v66, 0x1

    move/from16 v0, v66

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    .line 885
    const/16 v20, 0x0

    .line 889
    .local v20, "changed":Z
    const/16 v66, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v55

    .line 891
    .local v55, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v55, :cond_1

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v11

    .line 892
    .local v11, "NS":I
    :goto_0
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move/from16 v0, v28

    if-ge v0, v11, :cond_3

    .line 893
    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 897
    .local v58, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v58

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v66, v0

    if-nez v66, :cond_2

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v66, v0

    if-nez v66, :cond_2

    .line 898
    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 899
    add-int/lit8 v28, v28, -0x1

    .line 900
    add-int/lit8 v11, v11, -0x1

    .line 892
    :cond_0
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 891
    .end local v11    # "NS":I
    .end local v28    # "i":I
    .end local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 905
    .restart local v11    # "NS":I
    .restart local v28    # "i":I
    .restart local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v66, v0

    and-int/lit8 v66, v66, 0x8

    if-eqz v66, :cond_0

    .line 907
    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 908
    add-int/lit8 v28, v28, -0x1

    .line 909
    add-int/lit8 v11, v11, -0x1

    .line 910
    goto :goto_2

    .line 916
    .end local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v49

    .line 918
    .local v49, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v49, :cond_4

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v9

    .line 919
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->clear()V

    .line 920
    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    if-ge v0, v9, :cond_5

    .line 921
    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 922
    .local v43, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v67, v0

    new-instance v68, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v66 .. v68}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 918
    .end local v9    # "NP":I
    .end local v43    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 927
    .restart local v9    # "NP":I
    :cond_5
    const/16 v28, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v0, v11, :cond_7

    .line 928
    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 929
    .restart local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v66, v0

    const-wide/16 v68, 0x0

    cmp-long v66, v66, v68

    if-nez v66, :cond_6

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v66, v0

    if-lez v66, :cond_6

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;

    .line 931
    .local v13, "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 932
    const/16 v66, 0x1

    move/from16 v0, v66

    iput-boolean v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 933
    move-object/from16 v0, v58

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v66, v0

    if-eqz v66, :cond_6

    .line 934
    const/16 v66, 0x1

    move/from16 v0, v66

    iput-boolean v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 927
    .end local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 941
    .end local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    if-ge v0, v11, :cond_13

    .line 942
    move-object/from16 v0, v55

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 949
    .restart local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v66, v0

    const-wide/16 v68, 0x0

    cmp-long v66, v66, v68

    if-nez v66, :cond_b

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v66, v0

    if-lez v66, :cond_b

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;

    .line 951
    .restart local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v66, v0

    if-nez v66, :cond_b

    .line 957
    iget-object v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v66, v0

    const/16 v67, 0x12c

    move/from16 v0, v66

    move/from16 v1, v67

    if-ge v0, v1, :cond_b

    .line 961
    const/16 v60, 0x0

    .line 962
    .local v60, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    iget-object v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;

    .line 963
    .restart local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v13, :cond_9

    .line 964
    iget-boolean v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v66, v0

    if-nez v66, :cond_8

    iget-object v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v66

    if-eqz v66, :cond_a

    .line 965
    :cond_8
    const/16 v60, 0x1

    .line 970
    :cond_9
    if-eqz v60, :cond_b

    .line 941
    .end local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    .end local v60    # "skip":Z
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 968
    .restart local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    .restart local v60    # "skip":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    iget-object v0, v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 977
    .end local v13    # "ainfo":Lcom/android/extrasettings/applications/RunningState$AppProcessInfo;
    .end local v60    # "skip":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/HashMap;

    .line 978
    .local v52, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    if-nez v52, :cond_c

    .line 979
    new-instance v52, Ljava/util/HashMap;

    .end local v52    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v52 .. v52}, Ljava/util/HashMap;-><init>()V

    .line 980
    .restart local v52    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v67, v0

    move-object/from16 v0, v66

    move/from16 v1, v67

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 982
    :cond_c
    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v66, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 983
    .local v48, "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_d

    .line 984
    const/16 v20, 0x1

    .line 985
    new-instance v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v66, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v66

    move-object/from16 v3, v67

    invoke-direct {v0, v1, v2, v3}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 986
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v66, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v66

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_d
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_11

    .line 990
    move-object/from16 v0, v58

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v66, v0

    const-wide/16 v68, 0x0

    cmp-long v66, v66, v68

    if-nez v66, :cond_12

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v44, v0

    .line 991
    .local v44, "pid":I
    :goto_9
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    move/from16 v0, v44

    move/from16 v1, v66

    if-eq v0, v1, :cond_10

    .line 992
    const/16 v20, 0x1

    .line 993
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    move/from16 v0, v66

    move/from16 v1, v44

    if-eq v0, v1, :cond_10

    .line 994
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    if-eqz v66, :cond_e

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->remove(I)V

    .line 997
    :cond_e
    if-eqz v44, :cond_f

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v44

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1000
    :cond_f
    move/from16 v0, v44

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1003
    :cond_10
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->clear()V

    .line 1004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1006
    .end local v44    # "pid":I
    :cond_11
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v66

    or-int v20, v20, v66

    goto/16 :goto_8

    .line 990
    :cond_12
    const/16 v44, 0x0

    goto :goto_9

    .line 1011
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .end local v52    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    .end local v58    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v28, 0x0

    :goto_a
    move/from16 v0, v28

    if-ge v0, v9, :cond_18

    .line 1012
    move-object/from16 v0, v49

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1013
    .restart local v43    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1014
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_15

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1019
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    if-nez v48, :cond_14

    .line 1020
    const/16 v20, 0x1

    .line 1021
    new-instance v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v66, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v67, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v66

    move-object/from16 v3, v67

    invoke-direct {v0, v1, v2, v3}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1022
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v66, v0

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v67, v0

    move-object/from16 v0, v66

    move/from16 v1, v67

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1025
    :cond_14
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->clear()V

    .line 1028
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v66

    if-eqz v66, :cond_17

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v66

    if-nez v66, :cond_16

    .line 1030
    const/16 v20, 0x1

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1034
    const/16 v66, 0x1

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1035
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1040
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1041
    move-object/from16 v0, v43

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1011
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_a

    .line 1037
    :cond_17
    const/16 v66, 0x0

    move/from16 v0, v66

    move-object/from16 v1, v48

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1046
    .end local v43    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1047
    .local v10, "NRP":I
    const/16 v28, 0x0

    :goto_c
    move/from16 v0, v28

    if-ge v0, v10, :cond_1d

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1049
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_1c

    .line 1050
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v22, v0

    .line 1051
    .local v22, "clientPid":I
    if-eqz v22, :cond_1b

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1053
    .local v21, "client":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    if-nez v21, :cond_19

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "client":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    check-cast v21, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1056
    .restart local v21    # "client":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_19
    if-eqz v21, :cond_1a

    .line 1057
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v67, v0

    move-object/from16 v0, v66

    move/from16 v1, v67

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    .end local v21    # "client":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v28, v28, 0x1

    .line 1066
    goto :goto_c

    .line 1063
    :cond_1b
    const/16 v66, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1067
    .end local v22    # "clientPid":I
    :cond_1c
    const/16 v20, 0x1

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v67

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->remove(I)V

    .line 1069
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1074
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1075
    .local v8, "NHP":I
    const/16 v28, 0x0

    :goto_e
    move/from16 v0, v28

    if-ge v0, v8, :cond_20

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1077
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v66, v0

    if-eqz v66, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v66

    if-nez v66, :cond_1f

    .line 1078
    :cond_1e
    const/16 v20, 0x1

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1080
    add-int/lit8 v28, v28, -0x1

    .line 1081
    add-int/lit8 v8, v8, -0x1

    .line 1075
    :cond_1f
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    .line 1088
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1089
    .local v6, "NAP":I
    const/16 v28, 0x0

    :goto_f
    move/from16 v0, v28

    if-ge v0, v6, :cond_22

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1091
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_21

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-object/from16 v2, v47

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v66

    or-int v20, v20, v66

    .line 1089
    :cond_21
    add-int/lit8 v28, v28, 0x1

    goto :goto_f

    .line 1097
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_22
    const/16 v63, 0x0

    .line 1098
    .local v63, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v28, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v66

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_2a

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/util/HashMap;

    .line 1100
    .restart local v52    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 1101
    .local v46, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_29

    .line 1102
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1103
    .local v43, "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_26

    .line 1104
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1105
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    if-nez v66, :cond_24

    .line 1108
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->clear()V

    .line 1124
    :cond_24
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v59

    .line 1125
    .local v59, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/extrasettings/applications/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_23

    .line 1126
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 1127
    .local v58, "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_25

    .line 1128
    const/16 v20, 0x1

    .line 1129
    invoke-interface/range {v59 .. v59}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1111
    .end local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    .end local v59    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/extrasettings/applications/RunningState$ServiceItem;>;"
    :cond_26
    const/16 v20, 0x1

    .line 1112
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->remove()V

    .line 1113
    invoke-virtual/range {v52 .. v52}, Ljava/util/HashMap;->size()I

    move-result v66

    if-nez v66, :cond_28

    .line 1114
    if-nez v63, :cond_27

    .line 1115
    new-instance v63, Ljava/util/ArrayList;

    .end local v63    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .restart local v63    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v66

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_28
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    if-eqz v66, :cond_23

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1098
    .end local v43    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_10

    .line 1135
    .end local v46    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    .end local v52    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1136
    const/16 v28, 0x0

    :goto_13
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v66

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_2b

    .line 1137
    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/Integer;

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Integer;->intValue()I

    move-result v62

    .line 1138
    .local v62, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1136
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    .line 1142
    .end local v62    # "uid":I
    :cond_2b
    if-eqz v20, :cond_40

    .line 1144
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v61, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    const/16 v28, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v66

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_30

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/util/HashMap;

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_2f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1147
    .restart local v43    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    const/16 v66, 0x0

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1148
    const/16 v66, 0x1

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1149
    const-wide v66, 0x7fffffffffffffffL

    move-wide/from16 v0, v66

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1150
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_2e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 1151
    .restart local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v66, v0

    if-eqz v66, :cond_2d

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v66, v0

    and-int/lit8 v66, v66, 0x1

    if-eqz v66, :cond_2d

    .line 1154
    const/16 v66, 0x1

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1156
    :cond_2d
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v66, v0

    if-eqz v66, :cond_2c

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v66, v0

    if-eqz v66, :cond_2c

    .line 1158
    const/16 v66, 0x0

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1159
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v66, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v68, v0

    cmp-long v66, v66, v68

    if-lez v66, :cond_2c

    .line 1160
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v66, v0

    move-wide/from16 v0, v66

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1164
    .end local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v61

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1145
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v43    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_14

    .line 1168
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessComparator:Lcom/android/extrasettings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v66, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1170
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v36, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$BaseItem;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v37, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    .line 1173
    const/16 v28, 0x0

    :goto_17
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v66

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_39

    .line 1174
    move-object/from16 v0, v61

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1175
    .restart local v43    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    const/16 v66, 0x0

    move/from16 v0, v66

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1179
    .local v24, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1181
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    if-lez v66, :cond_31

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_31
    const/16 v31, 0x0

    .line 1188
    .local v31, "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    const/16 v25, 0x0

    .line 1189
    .local v25, "haveAllMerged":Z
    const/16 v33, 0x0

    .line 1190
    .local v33, "needDivider":Z
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_34

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 1191
    .restart local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    move/from16 v0, v33

    move-object/from16 v1, v58

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1192
    const/16 v33, 0x1

    .line 1193
    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    if-eqz v66, :cond_33

    .line 1195
    if-eqz v31, :cond_32

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_32

    .line 1196
    const/16 v25, 0x0

    .line 1198
    :cond_32
    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v31, v0

    goto :goto_18

    .line 1200
    :cond_33
    const/16 v25, 0x0

    goto :goto_18

    .line 1204
    .end local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    :cond_34
    if-eqz v25, :cond_35

    if-eqz v31, :cond_35

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Ljava/util/HashMap;->size()I

    move-result v67

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_37

    .line 1207
    :cond_35
    new-instance v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, v31

    move/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1208
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v66

    invoke-interface/range {v66 .. v66}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_19
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_36

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/extrasettings/applications/RunningState$ServiceItem;

    .line 1209
    .restart local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    move-object/from16 v0, v31

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1212
    .end local v58    # "si":Lcom/android/extrasettings/applications/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v43

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1213
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    .line 1214
    move/from16 v32, v24

    .local v32, "mpi":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    add-int/lit8 v66, v66, -0x1

    move/from16 v0, v32

    move/from16 v1, v66

    if-ge v0, v1, :cond_37

    .line 1215
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    add-int/lit8 v32, v32, 0x1

    goto :goto_1a

    .line 1219
    .end local v32    # "mpi":I
    :cond_37
    const/16 v66, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1220
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_38

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v66

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/extrasettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/extrasettings/applications/RunningState$MergedItem;)V

    .line 1173
    :goto_1b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_17

    .line 1223
    :cond_38
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1229
    .end local v24    # "firstProc":I
    .end local v25    # "haveAllMerged":Z
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v33    # "needDivider":Z
    .end local v43    # "pi":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1230
    const/16 v28, 0x0

    :goto_1c
    move/from16 v0, v28

    if-ge v0, v8, :cond_3d

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1232
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    move-object/from16 v66, v0

    if-nez v66, :cond_3b

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/HashMap;->size()I

    move-result v66

    if-gtz v66, :cond_3b

    .line 1233
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    if-nez v66, :cond_3a

    .line 1234
    new-instance v66, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v67, v0

    invoke-direct/range {v66 .. v67}, Lcom/android/extrasettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1235
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v66

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1237
    :cond_3a
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1238
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_3c

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v66

    move-object/from16 v4, v67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/extrasettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/extrasettings/applications/RunningState$MergedItem;)V

    .line 1244
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_3b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1c

    .line 1242
    :cond_3c
    const/16 v66, 0x0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v67, v0

    move-object/from16 v0, v37

    move/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1250
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1251
    .local v12, "NU":I
    const/16 v28, 0x0

    :goto_1e
    move/from16 v0, v28

    if-ge v0, v12, :cond_3f

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1253
    .local v64, "user":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v64

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_3e

    .line 1254
    const/16 v66, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1251
    :cond_3e
    add-int/lit8 v28, v28, 0x1

    goto :goto_1e

    .line 1258
    .end local v64    # "user":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v67, v0

    monitor-enter v67

    .line 1259
    :try_start_0
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1260
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1261
    monitor-exit v67
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    .end local v12    # "NU":I
    .end local v36    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$BaseItem;>;"
    .end local v37    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .end local v61    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1268
    const/16 v39, 0x0

    .line 1269
    .local v39, "numBackgroundProcesses":I
    const/16 v40, 0x0

    .line 1270
    .local v40, "numForegroundProcesses":I
    const/16 v42, 0x0

    .line 1271
    .local v42, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1272
    const/16 v28, 0x0

    :goto_1f
    move/from16 v0, v28

    if-ge v0, v10, :cond_44

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1274
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_43

    .line 1277
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v66, v0

    const/16 v67, 0x190

    move/from16 v0, v66

    move/from16 v1, v67

    if-lt v0, v1, :cond_41

    .line 1279
    add-int/lit8 v39, v39, 0x1

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    :goto_20
    add-int/lit8 v28, v28, 0x1

    goto :goto_1f

    .line 1261
    .end local v39    # "numBackgroundProcesses":I
    .end local v40    # "numForegroundProcesses":I
    .end local v42    # "numServiceProcesses":I
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v36    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$BaseItem;>;"
    .restart local v37    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v61    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v66

    :try_start_1
    monitor-exit v67
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v66

    .line 1281
    .end local v12    # "NU":I
    .end local v36    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$BaseItem;>;"
    .end local v37    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .end local v61    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$ProcessItem;>;"
    .restart local v39    # "numBackgroundProcesses":I
    .restart local v40    # "numForegroundProcesses":I
    .restart local v42    # "numServiceProcesses":I
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_41
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v66, v0

    const/16 v67, 0xc8

    move/from16 v0, v66

    move/from16 v1, v67

    if-gt v0, v1, :cond_42

    .line 1283
    add-int/lit8 v40, v40, 0x1

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1286
    :cond_42
    const-string v66, "RunningState"

    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Unknown non-service process: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " #"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v66 .. v67}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1290
    :cond_43
    add-int/lit8 v42, v42, 0x1

    goto :goto_20

    .line 1294
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    :cond_44
    const-wide/16 v14, 0x0

    .line 1295
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v16, 0x0

    .line 1296
    .local v16, "backgroundProcessSwapMemory":J
    const-wide/16 v26, 0x0

    .line 1297
    .local v26, "foregroundProcessMemory":J
    const-wide/16 v56, 0x0

    .line 1298
    .local v56, "serviceProcessMemory":J
    const/16 v34, 0x0

    .line 1299
    .local v34, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    const/16 v38, 0x0

    .line 1300
    .local v38, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    const/16 v23, 0x0

    .line 1302
    .local v23, "diffUsers":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v41

    .line 1303
    .local v41, "numProc":I
    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v45, v0

    .line 1304
    .local v45, "pids":[I
    const/16 v28, 0x0

    :goto_21
    move/from16 v0, v28

    move/from16 v1, v41

    if-ge v0, v1, :cond_45

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v66, v0

    aput v66, v45, v28

    .line 1304
    add-int/lit8 v28, v28, 0x1

    goto :goto_21

    .line 1307
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v53

    .line 1311
    .local v53, "pss":[J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPswap([I)[J

    move-result-object v54

    .line 1313
    .local v54, "pswap":[J
    invoke-static {}, Landroid/os/Process;->getZramCompressRatio()F
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v65

    .line 1316
    .local v65, "zramCompressRatio":F
    const/16 v18, 0x0

    .line 1317
    .local v18, "bgIndex":I
    const/16 v28, 0x0

    move-object/from16 v35, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .local v35, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_3
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v66, v0

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_4f

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1321
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    aget-wide v66, v53, v28

    move-wide/from16 v0, v66

    long-to-float v0, v0

    move/from16 v66, v0

    aget-wide v68, v54, v28

    move-wide/from16 v0, v68

    long-to-float v0, v0

    move/from16 v67, v0

    div-float v67, v67, v65

    add-float v66, v66, v67

    move/from16 v0, v66

    float-to-long v0, v0

    move-wide/from16 v50, v0

    .line 1322
    .local v50, "procSize":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v66, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-wide/from16 v2, v50

    move/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v66

    or-int v20, v20, v66

    .line 1326
    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_46

    .line 1327
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v66, v0

    add-long v56, v56, v66

    move-object/from16 v34, v35

    .line 1317
    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v28, v28, 0x1

    move-object/from16 v35, v34

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1328
    :cond_46
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v66, v0

    const/16 v67, 0x190

    move/from16 v0, v66

    move/from16 v1, v67

    if-lt v0, v1, :cond_4e

    .line 1330
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v66, v0

    add-long v14, v14, v66

    .line 1333
    aget-wide v66, v54, v28

    const-wide/16 v68, 0x400

    mul-long v66, v66, v68

    add-long v16, v16, v66

    .line 1337
    if-eqz v35, :cond_48

    .line 1338
    new-instance v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, v31

    move/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1339
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v66

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1340
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_47

    const/16 v66, 0x1

    :goto_24
    or-int v23, v23, v66

    .line 1341
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v34, v35

    .line 1359
    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v66, 0x1

    :try_start_4
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1360
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1361
    add-int/lit8 v18, v18, 0x1

    .line 1362
    goto :goto_23

    .line 1340
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_47
    const/16 v66, 0x0

    goto :goto_24

    .line 1343
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_48
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    move/from16 v0, v18

    move/from16 v1, v66

    if-ge v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_4d

    .line 1345
    :cond_49
    new-instance v34, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1346
    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    const/16 v19, 0x0

    .local v19, "bgi":I
    :goto_26
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_4b

    .line 1347
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1348
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_4a

    const/16 v66, 0x1

    :goto_27
    or-int v23, v23, v66

    .line 1349
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    add-int/lit8 v19, v19, 0x1

    goto :goto_26

    .line 1348
    :cond_4a
    const/16 v66, 0x0

    goto :goto_27

    .line 1351
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_4b
    new-instance v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, v31

    move/from16 v1, v66

    invoke-direct {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1352
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v66, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v66

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/extrasettings/applications/RunningState$ProcessItem;

    .line 1353
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_4c

    const/16 v66, 0x1

    :goto_28
    or-int v23, v23, v66

    .line 1354
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_25

    .line 1367
    .end local v18    # "bgIndex":I
    .end local v19    # "bgi":I
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v41    # "numProc":I
    .end local v45    # "pids":[I
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .end local v50    # "procSize":J
    .end local v53    # "pss":[J
    .end local v54    # "pswap":[J
    .end local v65    # "zramCompressRatio":F
    :catch_0
    move-exception v66

    .line 1370
    :goto_29
    if-nez v34, :cond_51

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    move/from16 v0, v66

    move/from16 v1, v39

    if-le v0, v1, :cond_51

    .line 1373
    new-instance v34, Ljava/util/ArrayList;

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1374
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    const/16 v19, 0x0

    .restart local v19    # "bgi":I
    :goto_2a
    move/from16 v0, v19

    move/from16 v1, v39

    if-ge v0, v1, :cond_51

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1376
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_50

    const/16 v66, 0x1

    :goto_2b
    or-int v23, v23, v66

    .line 1377
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v19, v19, 0x1

    goto :goto_2a

    .line 1353
    .restart local v18    # "bgIndex":I
    .restart local v41    # "numProc":I
    .restart local v45    # "pids":[I
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .restart local v50    # "procSize":J
    .restart local v53    # "pss":[J
    .restart local v54    # "pswap":[J
    .restart local v65    # "zramCompressRatio":F
    :cond_4c
    const/16 v66, 0x0

    goto :goto_28

    .line 1356
    .end local v19    # "bgi":I
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_4d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v34, v35

    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1362
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_4e
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v66, v0

    const/16 v67, 0xc8

    move/from16 v0, v66

    move/from16 v1, v67

    if-gt v0, v1, :cond_5a

    .line 1364
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/extrasettings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v66, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v26, v26, v66

    move-object/from16 v34, v35

    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .end local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .end local v50    # "procSize":J
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    :cond_4f
    move-object/from16 v34, v35

    .line 1368
    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1376
    .end local v18    # "bgIndex":I
    .end local v41    # "numProc":I
    .end local v45    # "pids":[I
    .end local v53    # "pss":[J
    .end local v54    # "pswap":[J
    .end local v65    # "zramCompressRatio":F
    .restart local v19    # "bgi":I
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_50
    const/16 v66, 0x0

    goto :goto_2b

    .line 1382
    .end local v19    # "bgi":I
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_51
    if-eqz v34, :cond_52

    .line 1385
    if-nez v23, :cond_53

    .line 1387
    move-object/from16 v38, v34

    .line 1415
    :cond_52
    const/16 v28, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    move/from16 v0, v28

    move/from16 v1, v66

    if-ge v0, v1, :cond_57

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1415
    add-int/lit8 v28, v28, 0x1

    goto :goto_2c

    .line 1391
    :cond_53
    new-instance v38, Ljava/util/ArrayList;

    .end local v38    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .restart local v38    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1393
    .local v7, "NB":I
    const/16 v28, 0x0

    :goto_2d
    move/from16 v0, v28

    if-ge v0, v7, :cond_55

    .line 1394
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1395
    .restart local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mMyUserId:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-eq v0, v1, :cond_54

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move-object/from16 v3, v66

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/extrasettings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/extrasettings/applications/RunningState$MergedItem;)V

    .line 1393
    :goto_2e
    add-int/lit8 v28, v28, 0x1

    goto :goto_2d

    .line 1399
    :cond_54
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1404
    .end local v31    # "mergedItem":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1405
    .restart local v12    # "NU":I
    const/16 v28, 0x0

    :goto_2f
    move/from16 v0, v28

    if-ge v0, v12, :cond_52

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v66, v0

    move-object/from16 v0, v66

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/android/extrasettings/applications/RunningState$MergedItem;

    .line 1407
    .restart local v64    # "user":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    move-object/from16 v0, v64

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/extrasettings/applications/RunningState;->mSequence:I

    move/from16 v67, v0

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_56

    .line 1408
    const/16 v66, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1409
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1405
    :cond_56
    add-int/lit8 v28, v28, 0x1

    goto :goto_2f

    .line 1419
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v64    # "user":Lcom/android/extrasettings/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v67, v0

    monitor-enter v67

    .line 1420
    :try_start_8
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1421
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1422
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/extrasettings/applications/RunningState;->mNumServiceProcesses:I

    .line 1423
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1424
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningState;->mBackgroundProcessSwapMemory:J

    .line 1425
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1426
    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/extrasettings/applications/RunningState;->mServiceProcessMemory:J

    .line 1427
    if-eqz v34, :cond_58

    .line 1428
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1429
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/extrasettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v66, v0

    if-eqz v66, :cond_58

    .line 1431
    const/16 v20, 0x1

    .line 1434
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/extrasettings/applications/RunningState;->mHaveData:Z

    move/from16 v66, v0

    if-nez v66, :cond_59

    .line 1435
    const/16 v66, 0x1

    move/from16 v0, v66

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/extrasettings/applications/RunningState;->mHaveData:Z

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Object;->notifyAll()V

    .line 1438
    :cond_59
    monitor-exit v67

    .line 1440
    return v20

    .line 1438
    :catchall_1
    move-exception v66

    monitor-exit v67
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v66

    .line 1367
    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v18    # "bgIndex":I
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v41    # "numProc":I
    .restart local v45    # "pids":[I
    .restart local v53    # "pss":[J
    .restart local v54    # "pswap":[J
    .restart local v65    # "zramCompressRatio":F
    :catch_1
    move-exception v66

    move-object/from16 v34, v35

    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v48    # "proc":Lcom/android/extrasettings/applications/RunningState$ProcessItem;
    .restart local v50    # "procSize":J
    :cond_5a
    move-object/from16 v34, v35

    .end local v35    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    .restart local v34    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/extrasettings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/extrasettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    :try_start_0
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 801
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 817
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mResumed:Z

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mRefreshUiListener:Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;

    .line 819
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mResumed:Z

    .line 775
    iput-object p1, p0, Lcom/android/extrasettings/applications/RunningState;->mRefreshUiListener:Lcom/android/extrasettings/applications/RunningState$OnRefreshUiListener;

    .line 778
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/extrasettings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/extrasettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHaveData:Z

    .line 780
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 782
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 788
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1451
    :try_start_0
    iput-boolean p1, p0, Lcom/android/extrasettings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1452
    monitor-exit v1

    .line 1453
    return-void

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mBackgroundHandler:Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/extrasettings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 795
    monitor-exit v1

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 806
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/extrasettings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 808
    :try_start_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    goto :goto_0

    .line 812
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
