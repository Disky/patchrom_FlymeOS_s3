.class Lcom/android/extrasettings/applications/AppOpsSummary$1;
.super Ljava/lang/Object;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/applications/AppOpsSummary;->resetCountersConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/AppOpsSummary;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/AppOpsSummary;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/extrasettings/applications/AppOpsSummary$1;->this$0:Lcom/android/extrasettings/applications/AppOpsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/extrasettings/applications/AppOpsSummary$1;->this$0:Lcom/android/extrasettings/applications/AppOpsSummary;

    # invokes: Lcom/android/extrasettings/applications/AppOpsSummary;->resetCounters()V
    invoke-static {v0}, Lcom/android/extrasettings/applications/AppOpsSummary;->access$000(Lcom/android/extrasettings/applications/AppOpsSummary;)V

    .line 204
    return-void
.end method
