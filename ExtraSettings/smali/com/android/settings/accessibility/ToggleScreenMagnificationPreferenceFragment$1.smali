.class Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/extrasettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/extrasettings/widget/ToggleSwitch;Z)Z
    .locals 2
    .param p1, "toggleSwitch"    # Lcom/android/extrasettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/android/extrasettings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/extrasettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/extrasettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 41
    const/4 v0, 0x0

    return v0
.end method