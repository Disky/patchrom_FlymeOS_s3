.class public Lcom/v/gesture/GestureStateUtils;
.super Ljava/lang/Object;
.source "GestureStateUtils.java"


# static fields
.field private static GESTURE_MODE_STATE_PATH:Ljava/lang/String;

.field private static GESTURE_POWER_STATE_PATH:Ljava/lang/String;

.field private static GESTURE_SWITCH_STATE_PATH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "libing-GestureStateUtils"

    sput-object v0, Lcom/v/gesture/GestureStateUtils;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "/sys/class/input/input3/ges_power_state"

    sput-object v0, Lcom/v/gesture/GestureStateUtils;->GESTURE_POWER_STATE_PATH:Ljava/lang/String;

    .line 13
    const-string v0, "/sys/class/input/input3/gesture"

    sput-object v0, Lcom/v/gesture/GestureStateUtils;->GESTURE_SWITCH_STATE_PATH:Ljava/lang/String;

    .line 14
    const-string v0, "/sys/class/input/input3/ges_mode_state"

    sput-object v0, Lcom/v/gesture/GestureStateUtils;->GESTURE_MODE_STATE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
