.class public Lcom/mediatek/settings/ClearMotionSettings;
.super Landroid/app/Activity;
.source "ClearMotionSettings.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mLineView:Landroid/view/View;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOffText:Landroid/widget/TextView;

.field private mOnText:Landroid/widget/TextView;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lcom/mediatek/settings/ClearMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/ClearMotionSettings$1;-><init>(Lcom/mediatek/settings/ClearMotionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/mediatek/settings/ClearMotionSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/ClearMotionSettings$2;-><init>(Lcom/mediatek/settings/ClearMotionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ClearMotionSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/ClearMotionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/ClearMotionSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/ClearMotionSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ClearMotionSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ClearMotionSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/ClearMotionSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/16 v6, 0x9b

    const/16 v4, 0x14

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 93
    const v1, 0x7f100200

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mLineView:Landroid/view/View;

    .line 94
    const v1, 0x7f100201

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f100202

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 99
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    .local v0, "padding":I
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionStatus()V

    .line 114
    const v1, 0x7f1001ff

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceView:Landroid/view/SurfaceView;

    .line 115
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 119
    return-void
.end method

.method private prepareVideo()V
    .locals 8

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 231
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "clear_motion_video.mp4"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 232
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 235
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 236
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 238
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "mMediaPlayer prepare()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to open file; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    goto :goto_0

    .line 243
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 244
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in illegal state; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "releaseMediaPlayer"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 255
    :cond_0
    return-void
.end method

.method private updateClearMotionDemo(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 155
    const-string v0, "ClearMotionSettingsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClearMotionDemo status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/mediatek/settings/ClearMotionSettings;->mLineView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-static {v1}, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->nativeSetDemoMode(I)Z

    .line 160
    return-void

    :cond_2
    move v0, v2

    .line 156
    goto :goto_0

    :cond_3
    move v0, v2

    .line 157
    goto :goto_1
.end method

.method private updateClearMotionStatus()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "updateClearMotionStatus"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const-string v1, "persist.sys.display.clearMotion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const-string v1, "sys.display.clearMotion.dimmed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 171
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "persist.sys.display.clearMotion"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p2}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    .line 174
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    .line 175
    return-void

    .line 172
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 208
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "onCompletion "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 211
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 212
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0400ee

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->initViews()V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 134
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->finish()V

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->nativeSetDemoMode(I)Z

    .line 167
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 202
    const-string v0, "ClearMotionSettingsLog"

    const-string v1, "onPrepared "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 191
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 179
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-object p1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 181
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 186
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    .line 187
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 196
    const-string v0, "ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    .line 198
    return-void
.end method
