.class Lcom/android/extrasettings/DataUsageSummary$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DataUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/extrasettings/DataUsageSummary$1;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/extrasettings/DataUsageSummary$1;->this$0:Lcom/android/extrasettings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/extrasettings/DataUsageSummary;->highlightViewIfNeeded()V

    .line 453
    return-void
.end method
