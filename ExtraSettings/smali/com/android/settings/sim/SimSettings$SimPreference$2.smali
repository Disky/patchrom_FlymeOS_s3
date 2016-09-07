.class Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;

.field final synthetic val$tintSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/sim/SimSettings$SimPreference;Landroid/view/View;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    iput-object p2, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 470
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->val$dialogLayout:Landroid/view/View;

    const v7, 0x7f10010a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 472
    .local v1, "nameText":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "displayName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$400(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 474
    .local v2, "subId":I
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$400(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # getter for: Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings;->access$500(Lcom/android/extrasettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    const-wide/16 v8, 0x2

    invoke-virtual {v6, v0, v2, v8, v9}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 479
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->val$tintSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    .line 480
    .local v5, "tintSelected":I
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$400(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 481
    .local v3, "subscriptionId":I
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mTintArr:[I
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$600(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)[I

    move-result-object v6

    aget v4, v6, v5

    .line 482
    .local v4, "tint":I
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    # getter for: Lcom/android/extrasettings/sim/SimSettings$SimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->access$400(Lcom/android/extrasettings/sim/SimSettings$SimPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/telephony/SubscriptionInfo;->setIconTint(I)V

    .line 483
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # getter for: Lcom/android/extrasettings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings;->access$500(Lcom/android/extrasettings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Landroid/telephony/SubscriptionManager;->setIconTint(II)I

    .line 486
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    iget-object v6, v6, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->this$0:Lcom/android/extrasettings/sim/SimSettings;

    # invokes: Lcom/android/extrasettings/sim/SimSettings;->updateAllOptions()V
    invoke-static {v6}, Lcom/android/extrasettings/sim/SimSettings;->access$700(Lcom/android/extrasettings/sim/SimSettings;)V

    .line 487
    iget-object v6, p0, Lcom/android/extrasettings/sim/SimSettings$SimPreference$2;->this$1:Lcom/android/extrasettings/sim/SimSettings$SimPreference;

    invoke-virtual {v6}, Lcom/android/extrasettings/sim/SimSettings$SimPreference;->update()V

    .line 488
    return-void
.end method
