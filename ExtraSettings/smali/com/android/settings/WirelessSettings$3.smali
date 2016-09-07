.class Lcom/android/extrasettings/WirelessSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/WirelessSettings;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/extrasettings/WirelessSettings$3;->this$0:Lcom/android/extrasettings/WirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 501
    const-string v0, "WirelessSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener, new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings$3;->this$0:Lcom/android/extrasettings/WirelessSettings;

    invoke-virtual {v0}, Lcom/android/extrasettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/extrasettings/WirelessSettings$3;->this$0:Lcom/android/extrasettings/WirelessSettings;

    # invokes: Lcom/android/extrasettings/WirelessSettings;->updateMobileNetworkEnabled()V
    invoke-static {v0}, Lcom/android/extrasettings/WirelessSettings;->access$000(Lcom/android/extrasettings/WirelessSettings;)V

    .line 505
    :cond_0
    return-void
.end method
