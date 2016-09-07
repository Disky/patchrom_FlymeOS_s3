.class Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/SettingsPreferenceFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/SettingsPreferenceFragment$2;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 240
    const-string v4, "SettingsPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "highlightPreference, 2st runnable runs, this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    iget v4, v4, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$position:I

    iget-object v5, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    iget-object v5, v5, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, v4, v5

    .line 242
    .local v2, "index":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    iget-object v4, v4, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    iget-object v4, v4, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 244
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 245
    .local v0, "centerX":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 246
    .local v1, "centerY":I
    iget-object v4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;->this$1:Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    iget-object v4, v4, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 251
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
