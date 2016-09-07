.class Lcom/mediatek/audioprofile/AudioProfileSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "Settings/AudioP"

    const-string v2, "User switched"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/audioprofile/AudioProfileSettings;->mIsSwitchUser:Z
    invoke-static {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileSettings;->access$102(Lcom/mediatek/audioprofile/AudioProfileSettings;Z)Z

    .line 158
    :cond_0
    return-void
.end method
