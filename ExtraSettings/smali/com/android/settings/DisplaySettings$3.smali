.class Lcom/android/extrasettings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/extrasettings/DisplaySettings$3;->this$0:Lcom/android/extrasettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/extrasettings/DisplaySettings$3;->this$0:Lcom/android/extrasettings/DisplaySettings;

    # getter for: Lcom/android/extrasettings/DisplaySettings;->mFontSizePref:Lcom/android/extrasettings/FontDialogPreference;
    invoke-static {v0}, Lcom/android/extrasettings/DisplaySettings;->access$200(Lcom/android/extrasettings/DisplaySettings;)Lcom/android/extrasettings/FontDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/FontDialogPreference;->click()V

    .line 508
    return-void
.end method
