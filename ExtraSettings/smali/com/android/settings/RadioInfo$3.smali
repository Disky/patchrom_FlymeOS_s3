.class Lcom/android/extrasettings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/RadioInfo;->updatePingState()V
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
    .line 805
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$2600(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$2500(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$2800(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$2700(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/extrasettings/RadioInfo;->access$3000(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo$3;->this$0:Lcom/android/extrasettings/RadioInfo;

    # getter for: Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/extrasettings/RadioInfo;->access$2900(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    return-void
.end method
