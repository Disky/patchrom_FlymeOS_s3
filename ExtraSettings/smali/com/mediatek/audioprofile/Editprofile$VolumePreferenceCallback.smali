.class final Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "Editprofile.java"

# interfaces
.implements Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/Editprofile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/Editprofile;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/Editprofile;Lcom/mediatek/audioprofile/Editprofile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/audioprofile/Editprofile;
    .param p2, "x1"    # Lcom/mediatek/audioprofile/Editprofile$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 425
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->stopSample()V

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .line 429
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # getter for: Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;
    invoke-static {v0}, Lcom/mediatek/audioprofile/Editprofile;->access$200(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/Editprofile$H;->removeMessages(I)V

    .line 431
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # getter for: Lcom/mediatek/audioprofile/Editprofile;->mHandler:Lcom/mediatek/audioprofile/Editprofile$H;
    invoke-static {v0}, Lcom/mediatek/audioprofile/Editprofile;->access$200(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/Editprofile$H;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    :cond_1
    return-void
.end method

.method public ringtoneChanged()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->ringtoneChanged()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    iget-object v0, v0, Lcom/mediatek/audioprofile/Editprofile;->mVolume:Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->getSeekBar()Lcom/mediatek/audioprofile/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->ringtoneChanged()V

    goto :goto_0
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$VolumePreferenceCallback;->mCurrent:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->stopSample()V

    .line 446
    :cond_0
    return-void
.end method
