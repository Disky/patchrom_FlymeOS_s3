.class Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$200(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # setter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mMuted:Z
    invoke-static {v0, p1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$202(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # invokes: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->updateIconView()V
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$300(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 123
    :cond_0
    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/extrasettings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/extrasettings/notification/VolumeSeekBarPreference;)Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/extrasettings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 117
    :cond_0
    return-void
.end method
