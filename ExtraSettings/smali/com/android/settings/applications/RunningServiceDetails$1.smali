.class Lcom/android/extrasettings/applications/RunningServiceDetails$1;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/applications/RunningServiceDetails;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails$1;->this$0:Lcom/android/extrasettings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/extrasettings/applications/RunningServiceDetails$1;->this$0:Lcom/android/extrasettings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/extrasettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 528
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 531
    :cond_0
    return-void
.end method
