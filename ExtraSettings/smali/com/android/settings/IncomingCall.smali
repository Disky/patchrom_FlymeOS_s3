.class public Lcom/android/extrasettings/IncomingCall;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/IncomingCall$1;,
        Lcom/android/extrasettings/IncomingCall$FlashThread;,
        Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;
    }
.end annotation


# instance fields
.field flash:Z

.field flashThread:Lcom/android/extrasettings/IncomingCall$FlashThread;

.field isWorking:Z

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall;->mContext:Landroid/content/Context;

    .line 17
    iput-boolean v1, p0, Lcom/android/extrasettings/IncomingCall;->flash:Z

    .line 18
    new-instance v0, Lcom/android/extrasettings/IncomingCall$FlashThread;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/IncomingCall$FlashThread;-><init>(Lcom/android/extrasettings/IncomingCall;)V

    iput-object v0, p0, Lcom/android/extrasettings/IncomingCall;->flashThread:Lcom/android/extrasettings/IncomingCall$FlashThread;

    .line 19
    iput-boolean v1, p0, Lcom/android/extrasettings/IncomingCall;->isWorking:Z

    .line 66
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/extrasettings/IncomingCall;->mContext:Landroid/content/Context;

    .line 25
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 29
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    new-instance v0, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;-><init>(Lcom/android/extrasettings/IncomingCall;Lcom/android/extrasettings/IncomingCall$1;)V

    .line 32
    .local v0, "PhoneListener":Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;
    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "PhoneListener":Lcom/android/extrasettings/IncomingCall$MyPhoneStateListener;
    .end local v2    # "tmgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Phone Receive Error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
