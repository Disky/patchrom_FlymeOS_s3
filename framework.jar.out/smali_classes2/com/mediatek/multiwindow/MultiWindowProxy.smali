.class public final Lcom/mediatek/multiwindow/MultiWindowProxy;
.super Lcom/mediatek/sef/proxy/FeatureProxyBase;
.source "MultiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static DEFAULT_CHANGE_CONFIG:Z = false

.field public static final ERR_HANDLING_CONFIG_NOT_CHANGE:I = 0x1

.field public static final ERR_HANDLING_DISABLE_FLOAT:I = 0x3

.field public static final ERR_HANDLING_MINIMAX_RESTART_APP:I = 0x2

.field public static final ERR_HANDLING_NONE:I = 0x0

.field public static final FLOATING_WINDOW_DIALOG:I = 0x2

.field public static final FLOATING_WINDOW_FULL:I = 0x1

.field private static final MULTIWINDOW_SERVICE:Ljava/lang/String; = "multiwindow_service_v1"

.field public static final NOT_FLOATING_WINDOW:I = 0x0

.field static final TAG:Ljava/lang/String; = "MultiWindow"

.field private static sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field public static sFeatureProperty:I

.field public static sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private isAppErrorHandlingEnabled:Z

.field private mAMSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mASSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mActionView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFloating:Z

.field private mIsTranslucent:Z

.field private mMaximumView:Landroid/widget/ImageView;

.field private mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

.field mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field private mStickView:Landroid/widget/ImageView;

.field private mSticked:Z

.field private mWindowType:I

.field private mWindowsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getFeatureProperty()I

    move-result v0

    sput v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    .line 897
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/mediatek/sef/proxy/FeatureProxyBase;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mSticked:Z

    .line 76
    iput v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 894
    const-string v1, "debug.mw.apperrhandling"

    invoke-static {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    .line 902
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    .line 95
    const-string v1, "MultiWindow"

    const-string v2, "MultiWindowProxy constructor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "multiwindow_service_v1"

    invoke-virtual {p0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 99
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 101
    :cond_0
    invoke-static {v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 102
    return-void
.end method

.method static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 876
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 878
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 879
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 880
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 882
    const-string v6, "getBoolean"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 883
    .local v2, "getBoolean":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 884
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 885
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v6

    .line 886
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 890
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getBoolean":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBooleanProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 890
    goto :goto_0
.end method

.method public static getFeatureProperty()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 158
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 161
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 162
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 164
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 165
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 166
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v8, "persist.sys.multiwindow"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 167
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 168
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 172
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFeatureProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;
    .locals 3

    .prologue
    .line 108
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-direct {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 112
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_0
    return-object v0

    .line 114
    :cond_0
    :try_start_2
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    sget-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    iput-object v2, v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_1
    :goto_1
    :try_start_3
    sget-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    monitor-exit v1

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static getIntProperty(Ljava/lang/String;I)I
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 856
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 858
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 859
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 860
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 862
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 863
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 864
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 865
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 866
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 870
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 868
    :catch_0
    move-exception v1

    .line 869
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 870
    goto :goto_0
.end method

.method public static isFeatureSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindowBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public activityCreated(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->activityCreated(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addConfigNotChangePkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addConfigNotChangePkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addDisableFloatPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addDisableFloatPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addMiniMaxRestartPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addMiniMaxRestartPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public adjustActivityConfig(Landroid/content/res/Configuration;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 405
    .local v1, "widthDp":I
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 407
    .local v0, "heightDp":I
    iput v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 408
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 409
    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 411
    :cond_0
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 412
    if-ge v1, v0, :cond_2

    .line 413
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 414
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 434
    :goto_0
    const-string v2, "MultiWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustActivityConfig, apply override config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "heightDp":I
    .end local v1    # "widthDp":I
    :cond_1
    return-object p1

    .line 416
    .restart local v0    # "heightDp":I
    .restart local v1    # "widthDp":I
    :cond_2
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 417
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 422
    :cond_3
    const/4 v2, 0x1

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 423
    if-ge v1, v0, :cond_4

    .line 424
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 425
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 427
    :cond_4
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 428
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0
.end method

.method public adjustWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    :cond_0
    return-object p1
.end method

.method public appErrorHandling(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inMaxOrRestore"    # Z

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    sget-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->appErrorHandling(Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 597
    :goto_0
    return v0

    .line 594
    :catch_0
    move-exception v0

    .line 597
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeWindow(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->closeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableFeature()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public enableFocusedFrame(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->enableFocusedFrame(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDisableFloatComponentList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatComponentList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatComponentList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableFloatPkgList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatPkgList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    :goto_0
    return-object v1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingState()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    return v0
.end method

.method public getPlatformApiVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "multiwindow_service_v1"

    return-object v0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public isAppErrorHandlingEnabled()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    return v0
.end method

.method public isFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 183
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 626
    :goto_0
    return v0

    .line 623
    :catch_0
    move-exception v0

    .line 626
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingWindow(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMiniMax(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isInMiniMax(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 693
    :goto_0
    return v0

    .line 690
    :catch_0
    move-exception v0

    .line 693
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x1

    return v0
.end method

.method public isStickStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isStickStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 679
    :goto_0
    return v0

    .line 676
    :catch_0
    move-exception v0

    .line 679
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSticky(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isSticky(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 665
    :goto_0
    return v0

    .line 662
    :catch_0
    move-exception v0

    .line 665
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchConfigChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 564
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchConfigChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchConfigNotChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigNotChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchConfigNotChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatActivityList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ActivityName"    # Ljava/lang/String;

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatActivityList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 483
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatActivityList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatPkgList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatWinList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "winName"    # Ljava/lang/String;

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 495
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatWinList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchMinimaxRestartList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchMinimaxRestartList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 551
    :goto_0
    return v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchMinimaxRestartList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniMaxTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->miniMaxTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveActivityTaskToFront(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveFloatingWindow(II)V
    .locals 1
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveFloatingWindow(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public needChangeConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 442
    sget-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public needHideRestoreButton(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "winName"    # Ljava/lang/String;

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const/4 v1, 0x1

    .line 512
    :goto_0
    return v1

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needHideRestoreButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resizeFloatingWindow(III)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resizeFloatingWindow(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restoreWindow(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    .line 267
    if-eqz p2, :cond_0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFloatDecorVisibility(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visibility"    # I

    .prologue
    .line 301
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v2, :cond_0

    .line 305
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 307
    .local v1, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    .line 308
    const-string v2, "MultiWindow"

    const-string v3, "setFloatDecorVisibility matched"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->phoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v2, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setFloatDecorVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "index":I
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_0
    :goto_1
    return-void

    .line 305
    .restart local v0    # "index":I
    .restart local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setFloatingStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setFloatingStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneWindowCallback(Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 240
    return-void
.end method

.method public setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowType(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowType"    # I

    .prologue
    .line 329
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 331
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez p2, :cond_1

    .line 338
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    goto :goto_0

    .line 341
    :cond_1
    iput p2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 344
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 346
    .local v1, "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_3

    .line 347
    const-string v3, "MultiWindow"

    const-string v4, "setWindowType matched,and remove!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_2
    new-instance v2, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-direct {v2, p0, p1, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;-><init>(Lcom/mediatek/multiwindow/MultiWindowProxy;Landroid/os/IBinder;Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V

    .line 353
    .local v2, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 356
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v3

    goto :goto_0

    .line 344
    .end local v2    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    .restart local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "index":I
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public showRestoreButton(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->showRestoreButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stickWindow(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSticky"    # Z

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->stickWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskAdded(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskRemoved(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    goto :goto_0
.end method
