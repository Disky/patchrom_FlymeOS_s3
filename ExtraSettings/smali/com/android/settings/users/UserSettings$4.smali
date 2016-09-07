.class Lcom/android/extrasettings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/extrasettings/users/UserSettings$4;->this$0:Lcom/android/extrasettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/extrasettings/users/UserSettings$4;->this$0:Lcom/android/extrasettings/users/UserSettings;

    # invokes: Lcom/android/extrasettings/users/UserSettings;->removeUserNow()V
    invoke-static {v0}, Lcom/android/extrasettings/users/UserSettings;->access$1000(Lcom/android/extrasettings/users/UserSettings;)V

    .line 512
    return-void
.end method
