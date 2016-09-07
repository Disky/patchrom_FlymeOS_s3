.class public Lcom/android/extrasettings/WriteIMEI;
.super Landroid/content/BroadcastReceiver;
.source "WriteIMEI.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone_1:Lcom/android/internal/telephony/Phone;

.field private mPhone_2:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-string v0, "WriteIMEI"

    iput-object v0, p0, Lcom/android/extrasettings/WriteIMEI;->TAG:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEI;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 30
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEI;->mPhone_1:Lcom/android/internal/telephony/Phone;

    .line 31
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEI;->mPhone_2:Lcom/android/internal/telephony/Phone;

    .line 32
    iput-object v1, p0, Lcom/android/extrasettings/WriteIMEI;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/extrasettings/WriteIMEI;->TAG:Ljava/lang/String;

    const-string v1, "Auto generate IMEI disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
