.class final Lcom/android/extrasettings/notification/ZenModeConditionSelection$H;
.super Landroid/os/Handler;
.source "ZenModeConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/ZenModeConditionSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/ZenModeConditionSelection;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeConditionSelection$H;->this$0:Lcom/android/extrasettings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/notification/ZenModeConditionSelection;Lcom/android/extrasettings/notification/ZenModeConditionSelection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/notification/ZenModeConditionSelection;
    .param p2, "x1"    # Lcom/android/extrasettings/notification/ZenModeConditionSelection$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/extrasettings/notification/ZenModeConditionSelection$H;-><init>(Lcom/android/extrasettings/notification/ZenModeConditionSelection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/extrasettings/notification/ZenModeConditionSelection$H;->this$0:Lcom/android/extrasettings/notification/ZenModeConditionSelection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/extrasettings/notification/ZenModeConditionSelection;->handleConditions([Landroid/service/notification/Condition;)V

    .line 154
    :cond_0
    return-void
.end method
