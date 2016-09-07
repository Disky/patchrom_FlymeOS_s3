.class Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/ApnSettings;Lcom/android/extrasettings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/ApnSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/ApnSettings$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/extrasettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 534
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 519
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 520
    # setter for: Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/android/extrasettings/ApnSettings;->access$402(Z)Z

    goto :goto_0

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    # invokes: Lcom/android/extrasettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/extrasettings/ApnSettings;->access$500(Lcom/android/extrasettings/ApnSettings;)V

    .line 524
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 525
    # setter for: Lcom/android/extrasettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/android/extrasettings/ApnSettings;->access$402(Z)Z

    .line 526
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/ApnSettings;->removeDialog(I)V

    .line 527
    iget-object v1, p0, Lcom/android/extrasettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/extrasettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
