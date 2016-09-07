.class Lcom/android/server/HallSwitchObserver;
.super Landroid/os/UEventObserver;
.source "HallSwitchObserver.java"


# static fields
.field private static final HALL_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final HALL_SWITCH_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hall"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHallState:I

.field private mHandler:Landroid/os/Handler;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mPmg:Landroid/os/PowerManager;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/HallSwitchObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I

    .line 41
    new-instance v0, Lcom/android/server/HallSwitchObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/HallSwitchObserver$1;-><init>(Lcom/android/server/HallSwitchObserver;)V

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mPmg:Landroid/os/PowerManager;

    .line 58
    iget-object v0, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 60
    const-string v0, "DEVPATH=/devices/virtual/switch/hall"

    invoke-virtual {p0, v0}, Lcom/android/server/HallSwitchObserver;->startObserving(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/HallSwitchObserver;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_10

    .line 149
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    .line 152
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private final declared-synchronized init()V
    .registers 8

    .prologue
    .line 77
    monitor-enter p0

    const/16 v5, 0x8

    :try_start_3
    new-array v0, v5, [C

    .line 79
    .local v0, "buffer":[C
    iget v4, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_38

    .line 81
    .local v4, "newState":I
    :try_start_7
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/hall/state"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 83
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 84
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_29} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_3b
    .catchall {:try_start_7 .. :try_end_29} :catchall_38

    move-result v4

    .line 91
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_2a
    :try_start_2a
    invoke-direct {p0, v4}, Lcom/android/server/HallSwitchObserver;->update(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_38

    .line 92
    monitor-exit p0

    return-void

    .line 85
    :catch_2f
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_30
    sget-object v5, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have hall switch support"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 77
    .end local v0    # "buffer":[C
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "newState":I
    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5

    .line 87
    .restart local v0    # "buffer":[C
    .restart local v4    # "newState":I
    :catch_3b
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3c
    sget-object v5, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_38

    goto :goto_2a
.end method

.method private final declared-synchronized update(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/HallSwitchObserver;->isNormalBoot()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v1

    if-nez v1, :cond_9

    .line 145
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 103
    :cond_9
    :try_start_9
    iget v1, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I

    if-eq v1, p1, :cond_7

    .line 105
    iput p1, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I

    .line 138
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 139
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez p1, :cond_26

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    goto :goto_7

    .line 101
    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1

    .line 142
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    goto :goto_7
.end method


# virtual methods
.method isNormalBoot()Z
    .registers 6

    .prologue
    .line 158
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "bootReason":Ljava/lang/String;
    const-string v2, "HallSwitchObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNormalBoot() bootReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v0, :cond_42

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v1, 0x1

    .line 161
    .local v1, "ret":Z
    :goto_29
    const-string v2, "HallSwitchObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNormalBoot() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v1

    .line 160
    .end local v1    # "ret":Z
    :cond_42
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 67
    sget-object v1, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hall Switch UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_1c
    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/HallSwitchObserver;->update(I)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_29} :catch_2a

    .line 74
    :goto_29
    return-void

    .line 71
    :catch_2a
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
