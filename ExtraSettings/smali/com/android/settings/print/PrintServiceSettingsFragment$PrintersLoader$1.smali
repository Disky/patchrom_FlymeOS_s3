.class Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader$1;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintersChanged()V
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader$1;->this$0:Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;

    # getter for: Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;
    invoke-static {v2}, Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;->access$1800(Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    .line 754
    return-void
.end method
