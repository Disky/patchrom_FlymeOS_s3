.class Lcom/android/extrasettings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/MasterClear;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/extrasettings/MasterClear$1;->this$0:Lcom/android/extrasettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/extrasettings/MasterClear$1;->this$0:Lcom/android/extrasettings/MasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/android/extrasettings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/extrasettings/MasterClear;->access$000(Lcom/android/extrasettings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/extrasettings/MasterClear$1;->this$0:Lcom/android/extrasettings/MasterClear;

    # invokes: Lcom/android/extrasettings/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/extrasettings/MasterClear;->access$100(Lcom/android/extrasettings/MasterClear;)V

    .line 128
    :cond_0
    return-void
.end method
