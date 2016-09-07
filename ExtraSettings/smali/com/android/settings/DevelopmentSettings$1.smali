.class Lcom/android/extrasettings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/android/extrasettings/DevelopmentSettings$1;->this$0:Lcom/android/extrasettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/extrasettings/DevelopmentSettings$1;->this$0:Lcom/android/extrasettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/extrasettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/extrasettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1548
    iget-object v0, p0, Lcom/android/extrasettings/DevelopmentSettings$1;->this$0:Lcom/android/extrasettings/DevelopmentSettings;

    # invokes: Lcom/android/extrasettings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/extrasettings/DevelopmentSettings;->access$000(Lcom/android/extrasettings/DevelopmentSettings;)V

    .line 1549
    return-void
.end method
