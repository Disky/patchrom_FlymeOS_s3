.class Lcom/android/extrasettings/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/extrasettings/IccLockSettings$4;->this$0:Lcom/android/extrasettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/extrasettings/IccLockSettings$4;->this$0:Lcom/android/extrasettings/IccLockSettings;

    # getter for: Lcom/android/extrasettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/extrasettings/IccLockSettings;->access$600(Lcom/android/extrasettings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method