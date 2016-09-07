.class Lcom/android/extrasettings/SecuritySettings$4;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/SecuritySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 554
    iput-object p1, p0, Lcom/android/extrasettings/SecuritySettings$4;->this$0:Lcom/android/extrasettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/extrasettings/SecuritySettings$4;->this$0:Lcom/android/extrasettings/SecuritySettings;

    # invokes: Lcom/android/extrasettings/SecuritySettings;->updateDeviceLockState()V
    invoke-static {v0}, Lcom/android/extrasettings/SecuritySettings;->access$000(Lcom/android/extrasettings/SecuritySettings;)V

    .line 558
    return-void
.end method
