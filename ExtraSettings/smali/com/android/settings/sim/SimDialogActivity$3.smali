.class Lcom/android/extrasettings/sim/SimDialogActivity$3;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:I

.field final synthetic val$subInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/sim/SimDialogActivity;ILjava/util/List;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    iput p2, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$id:I

    iput-object p3, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x1

    .line 194
    iget v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$id:I

    packed-switch v4, :pswitch_data_0

    .line 221
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dialog type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in SIM dialog."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :pswitch_0
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 197
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    # getter for: Lcom/android/extrasettings/sim/SimDialogActivity;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-static {v4}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$400(Lcom/android/extrasettings/sim/SimDialogActivity;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/ISimManagementExt;->switchDefaultDataSub(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    # invokes: Lcom/android/extrasettings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V
    invoke-static {v4, v5}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$100(Landroid/content/Context;I)V

    .line 225
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    invoke-virtual {v4}, Lcom/android/extrasettings/sim/SimDialogActivity;->finish()V

    .line 226
    return-void

    .line 202
    :pswitch_1
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 204
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 207
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    # invokes: Lcom/android/extrasettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v5, v4}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$300(Lcom/android/extrasettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    if-ge p2, v6, :cond_2

    const/4 v4, 0x0

    :goto_1
    # invokes: Lcom/android/extrasettings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    invoke-static {v5, v4}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$300(Lcom/android/extrasettings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v4, p2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    .line 216
    .end local v0    # "phoneAccountsList":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :pswitch_2
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->this$0:Lcom/android/extrasettings/sim/SimDialogActivity;

    iget-object v5, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$subInfoList:Ljava/util/List;

    # invokes: Lcom/android/extrasettings/sim/SimDialogActivity;->getDefaultSmsClickContent(Ljava/util/List;I)I
    invoke-static {v4, v5, p2}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$500(Lcom/android/extrasettings/sim/SimDialogActivity;Ljava/util/List;I)I

    move-result v2

    .line 217
    .local v2, "subId":I
    iget-object v4, p0, Lcom/android/extrasettings/sim/SimDialogActivity$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/extrasettings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V
    invoke-static {v4, v2}, Lcom/android/extrasettings/sim/SimDialogActivity;->access$200(Landroid/content/Context;I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
