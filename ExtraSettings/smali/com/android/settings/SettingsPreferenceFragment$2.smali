.class Lcom/android/extrasettings/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/extrasettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->this$0:Lcom/android/extrasettings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$position:I

    iput-object p4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    const-string v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highlightPreference, 1st runnable runs, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 237
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment$2;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/SettingsPreferenceFragment$2$1;-><init>(Lcom/android/extrasettings/SettingsPreferenceFragment$2;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method
