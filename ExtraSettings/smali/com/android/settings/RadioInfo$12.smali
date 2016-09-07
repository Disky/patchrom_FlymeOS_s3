.class Lcom/android/extrasettings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 944
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$12;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 946
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$12;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$3400(Lcom/android/extrasettings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 947
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 958
    :goto_0
    :pswitch_0
    return v3

    .line 949
    :pswitch_1
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$12;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 952
    :pswitch_2
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$12;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 947
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
