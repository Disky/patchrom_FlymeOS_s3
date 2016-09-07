.class Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/android/extrasettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;Lcom/android/extrasettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/extrasettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/extrasettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/extrasettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    sub-int/2addr v1, v2

    # setter for: Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->mColorValue:I
    invoke-static {v0, v1}, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->access$002(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;I)I

    .line 179
    iget-object v0, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/extrasettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/extrasettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    # setter for: Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->mOnValue:I
    invoke-static {v0, v1}, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->access$102(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;I)I

    .line 180
    iget-object v0, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/extrasettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/extrasettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    # setter for: Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->mOffValue:I
    invoke-static {v0, v1}, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->access$202(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;I)I

    .line 181
    iget-object v0, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->access$300(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;)V

    .line 182
    iget-object v0, p0, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, p0}, Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;->access$400(Lcom/android/extrasettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    .line 183
    return-void
.end method
