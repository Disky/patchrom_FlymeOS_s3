.class Lcom/android/extrasettings/notification/ZenModeSettings$12;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

.field final synthetic val$zenModeConditionSelection:Lcom/android/extrasettings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notification/ZenModeSettings;Lcom/android/extrasettings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/extrasettings/notification/ZenModeSettings$12;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/extrasettings/notification/ZenModeSettings$12;->val$zenModeConditionSelection:Lcom/android/extrasettings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings$12;->val$zenModeConditionSelection:Lcom/android/extrasettings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/extrasettings/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 543
    iget-object v0, p0, Lcom/android/extrasettings/notification/ZenModeSettings$12;->this$0:Lcom/android/extrasettings/notification/ZenModeSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/extrasettings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/extrasettings/notification/ZenModeSettings;->access$702(Lcom/android/extrasettings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 544
    return-void
.end method
