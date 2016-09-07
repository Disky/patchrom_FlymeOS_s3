.class Lcom/android/extrasettings/RadioInfo$18;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1108
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$18;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$18;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$18;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1111
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$18;->this$0:Lcom/android/extrasettings/RadioInfo;

    # invokes: Lcom/android/extrasettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$4400(Lcom/android/extrasettings/RadioInfo;)V

    .line 1112
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
