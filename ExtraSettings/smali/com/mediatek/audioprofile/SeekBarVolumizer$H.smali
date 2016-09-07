.class final Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;
    .param p2, "x1"    # Lcom/mediatek/audioprofile/SeekBarVolumizer$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # setter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I
    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$302(Lcom/mediatek/audioprofile/SeekBarVolumizer;I)I

    .line 444
    :cond_0
    return-void
.end method

.method public postUpdateSlider(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 447
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    return-void
.end method
