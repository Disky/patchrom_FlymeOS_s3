.class final Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .line 453
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 454
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 459
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$400(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$400(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$500(Lcom/mediatek/audioprofile/SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 461
    .local v0, "volume":I
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$600(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->postUpdateSlider(I)V

    .line 463
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
