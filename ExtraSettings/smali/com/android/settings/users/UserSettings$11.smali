.class Lcom/android/extrasettings/users/UserSettings$11;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/users/UserSettings;->removeUserNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/extrasettings/users/UserSettings$11;->this$0:Lcom/android/extrasettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings$11;->this$0:Lcom/android/extrasettings/users/UserSettings;

    # getter for: Lcom/android/extrasettings/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/extrasettings/users/UserSettings;->access$1700(Lcom/android/extrasettings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings$11;->this$0:Lcom/android/extrasettings/users/UserSettings;

    # getter for: Lcom/android/extrasettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/extrasettings/users/UserSettings;->access$800(Lcom/android/extrasettings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/extrasettings/users/UserSettings$11;->this$0:Lcom/android/extrasettings/users/UserSettings;

    # getter for: Lcom/android/extrasettings/users/UserSettings;->mRemovingUserId:I
    invoke-static {v2}, Lcom/android/extrasettings/users/UserSettings;->access$400(Lcom/android/extrasettings/users/UserSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z

    .line 657
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings$11;->this$0:Lcom/android/extrasettings/users/UserSettings;

    # getter for: Lcom/android/extrasettings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/extrasettings/users/UserSettings;->access$600(Lcom/android/extrasettings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 658
    monitor-exit v1

    .line 659
    return-void

    .line 658
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
