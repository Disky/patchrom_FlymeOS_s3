.class Lcom/android/extrasettings/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    # invokes: Lcom/android/extrasettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$000(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/extrasettings/applications/InstalledAppDetails;->mState:Lcom/android/extrasettings/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$200(Lcom/android/extrasettings/applications/InstalledAppDetails;)Lcom/android/extrasettings/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/extrasettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$100(Lcom/android/extrasettings/applications/InstalledAppDetails;)Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/extrasettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v0, p0, Lcom/android/extrasettings/applications/InstalledAppDetails$1;->this$0:Lcom/android/extrasettings/applications/InstalledAppDetails;

    # invokes: Lcom/android/extrasettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/extrasettings/applications/InstalledAppDetails;->access$300(Lcom/android/extrasettings/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
