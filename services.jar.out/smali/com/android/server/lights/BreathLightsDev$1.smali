.class Lcom/android/server/lights/BreathLightsDev$1;
.super Landroid/content/BroadcastReceiver;
.source "BreathLightsDev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/BreathLightsDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/BreathLightsDev;


# direct methods
.method constructor <init>(Lcom/android/server/lights/BreathLightsDev;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/lights/BreathLightsDev$1;->this$0:Lcom/android/server/lights/BreathLightsDev;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/server/lights/BreathLightsDev$1;->this$0:Lcom/android/server/lights/BreathLightsDev;

    # invokes: Lcom/android/server/lights/BreathLightsDev;->saveActionPara(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v1, v0, p2}, Lcom/android/server/lights/BreathLightsDev;->access$000(Lcom/android/server/lights/BreathLightsDev;Ljava/lang/String;Landroid/content/Intent;)V

    .line 157
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.BREATH_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/server/lights/BreathLightsDev$1;->this$0:Lcom/android/server/lights/BreathLightsDev;

    # invokes: Lcom/android/server/lights/BreathLightsDev;->doBreathLightInNewThread()V
    invoke-static {v1}, Lcom/android/server/lights/BreathLightsDev;->access$100(Lcom/android/server/lights/BreathLightsDev;)V

    .line 166
    :cond_1
    return-void
.end method
