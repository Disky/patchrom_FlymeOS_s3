.class Lcom/android/extrasettings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/SecuritySettings;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/extrasettings/SecuritySettings$1;->this$0:Lcom/android/extrasettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings$1;->this$0:Lcom/android/extrasettings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/extrasettings/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 171
    .local v0, "lstView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings$1;->this$0:Lcom/android/extrasettings/SecuritySettings;

    # getter for: Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/extrasettings/SecuritySettings;->access$000(Lcom/android/extrasettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 172
    iget-object v1, p0, Lcom/android/extrasettings/SecuritySettings$1;->this$0:Lcom/android/extrasettings/SecuritySettings;

    # getter for: Lcom/android/extrasettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/extrasettings/SecuritySettings;->access$000(Lcom/android/extrasettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 173
    return-void
.end method
