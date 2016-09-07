.class public Lcom/android/server/lights/BreathLightsDev;
.super Ljava/lang/Object;
.source "BreathLightsDev.java"


# static fields
.field private static final BreathKeyIntent:Ljava/lang/String; = "android.intent.action.BREATH_LIGHT"

.field private static final DEBUG:Z = true

.field private static final DevName:Ljava/lang/String; = "aw2013"

.field private static final LED_AUTO_BREATH:I = 0xf

.field private static final LED_AUTO_BREATH_ON_SHUTDOWN:I = 0x10

.field private static final LED_BLUE:I = 0x3

.field private static final LED_BREATH_GB:I = 0xd

.field private static final LED_BREATH_RB:I = 0xc

.field private static final LED_BREATH_RG:I = 0xb

.field private static final LED_BREATH_RGB:I = 0xe

.field private static final LED_BRIGHT_STATUS:I = 0x11

.field private static final LED_CONST_BLUE:I = 0x6

.field private static final LED_CONST_GB:I = 0x9

.field private static final LED_CONST_GREEN:I = 0x5

.field private static final LED_CONST_RB:I = 0x8

.field private static final LED_CONST_RED:I = 0x4

.field private static final LED_CONST_RG:I = 0x7

.field private static final LED_CONST_RGB:I = 0xa

.field private static final LED_FREE_BUTTON:I = 0x12

.field private static final LED_GREEN:I = 0x2

.field private static final LED_MAX:I = 0x13

.field private static final LED_OFF:I = 0x0

.field private static final LED_RED:I = 0x1

.field private static OWER:Ljava/lang/String; = null

.field private static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final TAG:Ljava/lang/String; = "BreathLightsDev"

.field private static final actionLock:Ljava/lang/Object;

.field private static chargering:Z = false

.field private static isBatteryLowSwitch:Z = false

.field private static isBootup:Z = false

.field private static isChargeSwitch:Z = false

.field private static isInited:Z = false

.field private static isMissEventSwitch:Z = false

.field private static isPlugged:Z = false

.field private static isRunning:Z = false

.field private static level:I = 0x0

.field private static mAction:Ljava/lang/String; = null

.field private static mBatteryNotice:Z = false

.field private static mBatteryStatus:I = 0x0

.field private static mInCall:Z = false

.field private static mLastMissCallCount:I = 0x0

.field private static mLastUnreadMsgCount:I = 0x0

.field private static mLed:I = 0x0

.field private static mMissLastCall:Z = false

.field private static mNewMissCallCount:I = 0x0

.field private static mNewUnreadMsgCount:I = 0x0

.field private static mPhoneState:Ljava/lang/String; = null

.field private static mPlugged:I = 0x0

.field private static mPm:Landroid/os/PowerManager; = null

.field private static mUnreadLastMsg:Z = false

.field private static mWindowManagerService:Landroid/view/IWindowManager; = null

.field private static myBreathlight:Lcom/android/server/lights/LightsService$LightImpl; = null

.field private static myContext:Landroid/content/Context; = null

.field private static final screenOff:I = 0x0

.field private static final screenOn:I = 0x1

.field private static screenState:I = 0x0

.field private static final screenUnlock:I = 0x2


# instance fields
.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isInited:Z

    .line 94
    const/16 v0, 0x13

    sput v0, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    .line 96
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->chargering:Z

    .line 97
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isPlugged:Z

    .line 98
    sput v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 99
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->mInCall:Z

    .line 100
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/lights/BreathLightsDev;->mPhoneState:Ljava/lang/String;

    .line 101
    const/4 v0, 0x3

    sput v0, Lcom/android/server/lights/BreathLightsDev;->mBatteryStatus:I

    .line 102
    sput v2, Lcom/android/server/lights/BreathLightsDev;->mPlugged:I

    .line 104
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    .line 105
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    .line 106
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->mBatteryNotice:Z

    .line 108
    sput v1, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    .line 109
    sput v1, Lcom/android/server/lights/BreathLightsDev;->mLastUnreadMsgCount:I

    .line 110
    sput v1, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    .line 111
    sput v1, Lcom/android/server/lights/BreathLightsDev;->mLastMissCallCount:I

    .line 112
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isBootup:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/lights/BreathLightsDev;->actionLock:Ljava/lang/Object;

    .line 114
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isChargeSwitch:Z

    .line 115
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isBatteryLowSwitch:Z

    .line 116
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isMissEventSwitch:Z

    .line 117
    sput-boolean v1, Lcom/android/server/lights/BreathLightsDev;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mLight"    # Lcom/android/server/lights/LightsService$LightImpl;

    .prologue
    const/4 v2, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Lcom/android/server/lights/BreathLightsDev$1;

    invoke-direct {v0, p0}, Lcom/android/server/lights/BreathLightsDev$1;-><init>(Lcom/android/server/lights/BreathLightsDev;)V

    iput-object v0, p0, Lcom/android/server/lights/BreathLightsDev;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 121
    sget-boolean v0, Lcom/android/server/lights/BreathLightsDev;->isInited:Z

    if-nez v0, :cond_0

    .line 122
    sput-object p2, Lcom/android/server/lights/BreathLightsDev;->OWER:Ljava/lang/String;

    .line 123
    sput-object p1, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    .line 124
    sput-object p3, Lcom/android/server/lights/BreathLightsDev;->myBreathlight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 125
    invoke-direct {p0}, Lcom/android/server/lights/BreathLightsDev;->listenForBroadcasts()V

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/lights/BreathLightsDev;->isInited:Z

    .line 128
    sget-object v0, Lcom/android/server/lights/BreathLightsDev;->myBreathlight:Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/BreathLightsDev;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/BreathLightsDev;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/BreathLightsDev;->saveActionPara(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/BreathLightsDev;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/BreathLightsDev;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/BreathLightsDev;->doBreathLightInNewThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lights/BreathLightsDev;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/BreathLightsDev;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/lights/BreathLightsDev;->doBreathLight()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/android/server/lights/BreathLightsDev;->isRunning:Z

    return p0
.end method

.method private action2ledMap(Ljava/lang/String;)I
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x13

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 352
    if-nez p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->isBootup:Z

    if-eqz v2, :cond_3

    .line 357
    sget-object v2, Lcom/android/server/lights/BreathLightsDev;->mPm:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    .line 358
    sget-object v2, Lcom/android/server/lights/BreathLightsDev;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 359
    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 363
    :goto_1
    const-string v2, "BreathLightsDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPm.isScreenOn() screenState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    sget-object v2, Lcom/android/server/lights/BreathLightsDev;->mWindowManagerService:Landroid/view/IWindowManager;

    if-eqz v2, :cond_3

    .line 367
    :try_start_0
    sget-object v2, Lcom/android/server/lights/BreathLightsDev;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    if-eqz v2, :cond_3

    .line 368
    const/4 v2, 0x2

    sput v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 369
    const-string v2, "BreathLightsDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWindowManagerService.isKeyguardLocked() screenState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_3
    const-string v2, "BreathLightsDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  screenState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  chargering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/BreathLightsDev;->chargering:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mMissLastCall:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mUnreadLastMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v2, "BreathLightsDev"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mNewUnreadMsgCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mLastUnreadMsgCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->mLastUnreadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mNewMissCallCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mLastMissCallCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/lights/BreathLightsDev;->mLastMissCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    if-ne v2, v5, :cond_6

    .line 385
    const/16 v0, 0xf

    .line 386
    .local v0, "led":I
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->mInCall:Z

    if-eqz v2, :cond_4

    .line 387
    const/16 v0, 0x11

    .line 389
    :cond_4
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 361
    .end local v0    # "led":I
    :cond_5
    const/4 v2, 0x0

    sput v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    goto/16 :goto_1

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "BreathLightsDev"

    const-string v3, "mWindowManagerService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_6
    sget v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    if-ne v2, v6, :cond_8

    .line 394
    const-string v2, "android.intent.action.BREATH_LIGHT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 395
    const/16 v0, 0x12

    .line 400
    .restart local v0    # "led":I
    :goto_2
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 397
    .end local v0    # "led":I
    :cond_7
    const/16 v0, 0x11

    .restart local v0    # "led":I
    goto :goto_2

    .line 404
    .end local v0    # "led":I
    :cond_8
    sget v2, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    if-nez v2, :cond_e

    .line 405
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->chargering:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->isChargeSwitch:Z

    if-eqz v2, :cond_9

    .line 406
    const/16 v0, 0xf

    .line 417
    .restart local v0    # "led":I
    :goto_3
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 407
    .end local v0    # "led":I
    :cond_9
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    if-eqz v2, :cond_b

    :cond_a
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->isMissEventSwitch:Z

    if-eqz v2, :cond_b

    .line 408
    const/16 v0, 0xf

    .restart local v0    # "led":I
    goto :goto_3

    .line 409
    .end local v0    # "led":I
    :cond_b
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->mBatteryNotice:Z

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->isBatteryLowSwitch:Z

    if-eqz v2, :cond_c

    .line 410
    const/16 v0, 0xf

    .restart local v0    # "led":I
    goto :goto_3

    .line 411
    .end local v0    # "led":I
    :cond_c
    sget-boolean v2, Lcom/android/server/lights/BreathLightsDev;->isPlugged:Z

    if-eqz v2, :cond_d

    sget v2, Lcom/android/server/lights/BreathLightsDev;->level:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_d

    .line 412
    const/16 v0, 0x11

    .restart local v0    # "led":I
    goto :goto_3

    .line 414
    .end local v0    # "led":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "led":I
    goto :goto_3

    .line 422
    .end local v0    # "led":I
    :cond_e
    const/16 v0, 0x13

    .restart local v0    # "led":I
    goto/16 :goto_0
.end method

.method private declared-synchronized doBreathLight()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 219
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/lights/BreathLightsDev;->actionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    sget-object v2, Lcom/android/server/lights/BreathLightsDev;->mAction:Ljava/lang/String;

    .line 221
    .local v2, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/lights/BreathLightsDev;->mPhoneState:Ljava/lang/String;

    .line 222
    .local v1, "PhoneState":Ljava/lang/String;
    sget v0, Lcom/android/server/lights/BreathLightsDev;->mBatteryStatus:I

    .line 223
    .local v0, "BatteryStatus":I
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    .end local v0    # "BatteryStatus":I
    .end local v1    # "PhoneState":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 229
    .restart local v0    # "BatteryStatus":I
    .restart local v1    # "PhoneState":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_1
    :try_start_4
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mInCall:Z

    .line 232
    if-ne v0, v10, :cond_7

    .line 233
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->chargering:Z

    .line 237
    :goto_1
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mPlugged:I

    if-eq v5, v6, :cond_4

    sget v5, Lcom/android/server/lights/BreathLightsDev;->mPlugged:I

    if-ne v5, v10, :cond_8

    .line 238
    :cond_4
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isPlugged:Z

    .line 242
    :goto_2
    const-string v5, "BreathLightsDev"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPlugged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/lights/BreathLightsDev;->isPlugged:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "persist.sys.bl_charge"

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    .line 244
    const-string v5, "BreathLightsDev"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "charge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persist.sys.bl_charge"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isChargeSwitch:Z

    .line 249
    :goto_3
    const-string v5, "persist.sys.bl_battery_low"

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_a

    .line 250
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isBatteryLowSwitch:Z

    .line 254
    :goto_4
    const-string v5, "persist.sys.bl_miss_evevt"

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 255
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isMissEventSwitch:Z

    .line 260
    :goto_5
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 261
    sget v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    if-eq v5, v10, :cond_5

    .line 262
    const/4 v5, 0x1

    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 322
    :cond_5
    :goto_6
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.BREATH_LIGHT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.REBOOT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/server/lights/BreathLightsDev;->action2ledMap(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "led":I
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    if-eq v5, v3, :cond_0

    .line 328
    sput v3, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    .line 329
    const-string v5, "BreathLightsDev"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFlashing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myBreathlight:Lcom/android/server/lights/LightsService$LightImpl;

    sget v6, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    .line 331
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_0

    .line 333
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myBreathlight:Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v6, 0x13

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 235
    .end local v3    # "led":I
    :cond_7
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->chargering:Z

    goto/16 :goto_1

    .line 240
    :cond_8
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isPlugged:Z

    goto/16 :goto_2

    .line 247
    :cond_9
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isChargeSwitch:Z

    goto/16 :goto_3

    .line 252
    :cond_a
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isBatteryLowSwitch:Z

    goto/16 :goto_4

    .line 257
    :cond_b
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->isMissEventSwitch:Z

    goto/16 :goto_5

    .line 265
    :cond_c
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 268
    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 269
    const/4 v5, 0x2

    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 270
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/lights/BreathLightsDev;->readMissCall(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    .line 271
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mLastMissCallCount:I

    .line 272
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/lights/BreathLightsDev;->getUnreadMsg(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    .line 273
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mLastUnreadMsgCount:I

    .line 274
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    .line 275
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    goto/16 :goto_6

    .line 277
    :cond_d
    const-string v5, "android.intent.action.BREATH_LIGHT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 278
    const/16 v5, 0x13

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mLed:I

    goto/16 :goto_6

    .line 279
    :cond_e
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 282
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 283
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 286
    const/4 v5, 0x0

    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 287
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/lights/BreathLightsDev;->getUnreadMsg(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    .line 288
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mNewUnreadMsgCount:I

    if-lez v5, :cond_f

    .line 289
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    .line 293
    :goto_7
    sget-object v5, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/lights/BreathLightsDev;->readMissCall(Landroid/content/Context;)I

    move-result v5

    sput v5, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    .line 294
    sget v5, Lcom/android/server/lights/BreathLightsDev;->mNewMissCallCount:I

    if-lez v5, :cond_10

    .line 295
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    goto/16 :goto_6

    .line 291
    :cond_f
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mUnreadLastMsg:Z

    goto :goto_7

    .line 297
    :cond_10
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/lights/BreathLightsDev;->mMissLastCall:Z

    goto/16 :goto_6

    .line 300
    :cond_11
    const-string v5, "android.intent.action.REBOOT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 301
    const/4 v5, 0x0

    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 302
    const-wide/16 v6, 0x4b0

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6

    .line 304
    :cond_12
    const-string v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 305
    const/4 v5, 0x0

    sput v5, Lcom/android/server/lights/BreathLightsDev;->screenState:I

    .line 306
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "shutdownAction":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_13

    .line 309
    const-wide/16 v6, 0x4b0

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 310
    const-string v2, "android.intent.action.REBOOT"

    goto/16 :goto_6

    .line 314
    :cond_13
    const-string v2, "android.intent.action.ACTION_PRE_SHUTDOWN"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_6
.end method

.method private declared-synchronized doBreathLightInNewThread()V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/lights/BreathLightsDev;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/server/lights/BreathLightsDev;->isRunning:Z

    .line 204
    new-instance v0, Lcom/android/server/lights/BreathLightsDev$2;

    invoke-direct {v0, p0}, Lcom/android/server/lights/BreathLightsDev$2;-><init>(Lcom/android/server/lights/BreathLightsDev;)V

    invoke-virtual {v0}, Lcom/android/server/lights/BreathLightsDev$2;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNewMmsCount(Landroid/content/Context;)I
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 446
    const/4 v7, 0x0

    .line 447
    .local v7, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "read = 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, "csr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_0
    const-string v0, "BreathLightsDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewMmsCount result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v7
.end method

.method private getNewSmsCount(Landroid/content/Context;)I
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 434
    const/4 v7, 0x0

    .line 435
    .local v7, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type = 1 and read = 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, "csr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_0
    const-string v0, "BreathLightsDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewSmsCount result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v7
.end method

.method private getUnreadMsg(Landroid/content/Context;)I
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/lights/BreathLightsDev;->getNewSmsCount(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/lights/BreathLightsDev;->getNewMmsCount(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private listenForBroadcasts()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.BREATH_LIGHT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/lights/BreathLightsDev;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method private readMissCall(Landroid/content/Context;)I
    .locals 10
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 458
    const/4 v7, 0x0

    .line 459
    .local v7, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v8

    const-string v3, " type=? and new=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "3"

    aput-object v5, v4, v8

    const-string v5, "1"

    aput-object v5, v4, v9

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_0
    const-string v0, "BreathLightsDev"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMissCall result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return v7
.end method

.method private saveActionPara(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    sget-object v1, Lcom/android/server/lights/BreathLightsDev;->actionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/lights/BreathLightsDev;->mPhoneState:Ljava/lang/String;

    .line 193
    :cond_0
    :goto_0
    sput-object p1, Lcom/android/server/lights/BreathLightsDev;->mAction:Ljava/lang/String;

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 173
    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const-string v0, "status"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/lights/BreathLightsDev;->mBatteryStatus:I

    .line 175
    const-string v0, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/lights/BreathLightsDev;->mPlugged:I

    .line 176
    const-string v0, "BreathLightsDev"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlugged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/lights/BreathLightsDev;->mPlugged:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v0, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/lights/BreathLightsDev;->level:I

    .line 178
    sget v0, Lcom/android/server/lights/BreathLightsDev;->level:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_2

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/lights/BreathLightsDev;->mBatteryNotice:Z

    .line 183
    :goto_1
    const-string v0, "BreathLightsDev"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/lights/BreathLightsDev;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/server/lights/BreathLightsDev;->mBatteryNotice:Z

    goto :goto_1

    .line 184
    :cond_3
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/server/lights/BreathLightsDev;->mPm:Landroid/os/PowerManager;

    if-nez v0, :cond_4

    .line 186
    sget-object v0, Lcom/android/server/lights/BreathLightsDev;->myContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/lights/BreathLightsDev;->mPm:Landroid/os/PowerManager;

    .line 188
    :cond_4
    sget-object v0, Lcom/android/server/lights/BreathLightsDev;->mWindowManagerService:Landroid/view/IWindowManager;

    if-nez v0, :cond_5

    .line 189
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    sput-object v0, Lcom/android/server/lights/BreathLightsDev;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 191
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/lights/BreathLightsDev;->isBootup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
