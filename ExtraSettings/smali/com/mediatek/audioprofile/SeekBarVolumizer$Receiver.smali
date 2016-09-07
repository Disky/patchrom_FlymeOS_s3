.class final Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;
    .param p2, "x1"    # Lcom/mediatek/audioprofile/SeekBarVolumizer$1;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 488
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 490
    .local v0, "streamType":I
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 491
    .local v1, "streamValue":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$500(Lcom/mediatek/audioprofile/SeekBarVolumizer;)I

    move-result v2

    if-ne v0, v2, :cond_0

    if-eq v1, v4, :cond_0

    .line 492
    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
    invoke-static {v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$600(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;->postUpdateSlider(I)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 476
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 477
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->mListening:Z

    .line 478
    if-eqz p1, :cond_1

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$700(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 482
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->this$0:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    # getter for: Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->access$700(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
