.class Lcom/android/server/lights/BreathLightsDev$2;
.super Ljava/lang/Thread;
.source "BreathLightsDev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/BreathLightsDev;->doBreathLightInNewThread()V
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
    .line 204
    iput-object p1, p0, Lcom/android/server/lights/BreathLightsDev$2;->this$0:Lcom/android/server/lights/BreathLightsDev;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/lights/BreathLightsDev$2;->this$0:Lcom/android/server/lights/BreathLightsDev;

    # invokes: Lcom/android/server/lights/BreathLightsDev;->doBreathLight()V
    invoke-static {v0}, Lcom/android/server/lights/BreathLightsDev;->access$200(Lcom/android/server/lights/BreathLightsDev;)V

    .line 208
    const/4 v0, 0x0

    # setter for: Lcom/android/server/lights/BreathLightsDev;->isRunning:Z
    invoke-static {v0}, Lcom/android/server/lights/BreathLightsDev;->access$302(Z)Z

    .line 209
    return-void
.end method
