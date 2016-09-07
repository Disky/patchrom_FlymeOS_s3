.class Lcom/android/extrasettings/CryptKeeper$PhoneStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/extrasettings/CryptKeeper$PhoneStateBroadcastReceiver;->this$0:Lcom/android/extrasettings/CryptKeeper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/CryptKeeper;Lcom/android/extrasettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/CryptKeeper;
    .param p2, "x1"    # Lcom/android/extrasettings/CryptKeeper$1;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/android/extrasettings/CryptKeeper$PhoneStateBroadcastReceiver;-><init>(Lcom/android/extrasettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1071
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateBroadcastReceiver action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v1, p0, Lcom/android/extrasettings/CryptKeeper$PhoneStateBroadcastReceiver;->this$0:Lcom/android/extrasettings/CryptKeeper;

    # invokes: Lcom/android/extrasettings/CryptKeeper;->updateEmergencyCallButtonState()V
    invoke-static {v1}, Lcom/android/extrasettings/CryptKeeper;->access$2100(Lcom/android/extrasettings/CryptKeeper;)V

    .line 1077
    :cond_0
    return-void
.end method
