.class Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "IncomingCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/IncomingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/IncomingCall;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/IncomingCall;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/IncomingCall;Lcom/android/extrasettings/IncomingCall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/IncomingCall;
    .param p2, "x1"    # Lcom/android/extrasettings/IncomingCall$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;-><init>(Lcom/android/extrasettings/IncomingCall;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    :try_start_0
    const-string v2, "MyPhoneListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   incoming no:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-ne p1, v1, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    iget-object v2, v2, Lcom/android/extrasettings/IncomingCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flash_Call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 52
    .local v0, "flashcall":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 54
    iget-object v2, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/extrasettings/IncomingCall;->isWorking:Z

    .line 55
    iget-object v2, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    iget-object v2, v2, Lcom/android/extrasettings/IncomingCall;->flashThread:Lcom/android/extrasettings/IncomingCall$FlashThread;

    invoke-virtual {v2}, Lcom/android/extrasettings/IncomingCall$FlashThread;->start()V

    .line 58
    .end local v0    # "flashcall":Z
    :cond_1
    if-eq p1, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/extrasettings/IncomingCall;->isWorking:Z

    .line 60
    iget-object v1, p0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;->this$0:Lcom/android/extrasettings/IncomingCall;

    iget-object v1, v1, Lcom/android/extrasettings/IncomingCall;->flashThread:Lcom/android/extrasettings/IncomingCall$FlashThread;

    invoke-virtual {v1}, Lcom/android/extrasettings/IncomingCall$FlashThread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_2
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method
