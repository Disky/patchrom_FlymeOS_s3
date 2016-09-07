.class Lcom/android/extrasettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # setter for: Lcom/android/extrasettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/extrasettings/RadioInfo;->access$802(Lcom/android/extrasettings/RadioInfo;Z)Z

    .line 176
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$900(Lcom/android/extrasettings/RadioInfo;)V

    .line 177
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/RadioInfo;->access$1000(Lcom/android/extrasettings/RadioInfo;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/extrasettings/RadioInfo;->access$1100(Lcom/android/extrasettings/RadioInfo;Ljava/util/List;)V

    .line 183
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/extrasettings/RadioInfo;->access$500(Lcom/android/extrasettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 165
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$400(Lcom/android/extrasettings/RadioInfo;)V

    .line 160
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: dcRtInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/RadioInfo;->access$1000(Lcom/android/extrasettings/RadioInfo;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    invoke-static {v0, p1}, Lcom/android/extrasettings/RadioInfo;->access$1200(Lcom/android/extrasettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 189
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$000(Lcom/android/extrasettings/RadioInfo;)V

    .line 152
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$100(Lcom/android/extrasettings/RadioInfo;)V

    .line 153
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$200(Lcom/android/extrasettings/RadioInfo;)V

    .line 154
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$300(Lcom/android/extrasettings/RadioInfo;)V

    .line 155
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # setter for: Lcom/android/extrasettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/extrasettings/RadioInfo;->access$602(Lcom/android/extrasettings/RadioInfo;Z)Z

    .line 170
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$1;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$700(Lcom/android/extrasettings/RadioInfo;)V

    .line 171
    return-void
.end method
