.class public Lcom/mediatek/audioprofile/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/SeekBarVolumizer$1;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$H;,
        Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field public mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private final mHandler:Landroid/os/Handler;

.field private mKey:Ljava/lang/String;

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mOriginalStreamVolume:I

.field private mProfileIsActive:Z

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mSystemVolume:I

.field private final mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private final mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;
    .param p5, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/audioprofile/SeekBarVolumizer$H;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    .line 61
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 62
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Lcom/mediatek/audioprofile/SeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    .line 65
    iput-boolean v4, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    .line 69
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    .line 71
    iput v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 83
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 84
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    const-string v1, "audioprofile"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 88
    iput p2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    .line 89
    iput-object p5, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 92
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    .line 93
    const-string v1, "AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get Original SYSTEM Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 98
    const-string v1, "AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get Original Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    .line 105
    iget-boolean v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v1, :cond_0

    .line 106
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-eq v1, v2, :cond_0

    .line 107
    const-string v1, "AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " original Volume to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 113
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioProfile_SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p4, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    .line 119
    new-instance v1, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;-><init>(Lcom/mediatek/audioprofile/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    .line 120
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mVolumeObserver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mReceiver:Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;

    invoke-virtual {v1, v5}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 124
    if-nez p3, :cond_1

    .line 125
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_2

    .line 126
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    .line 135
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 136
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 139
    return-void

    .line 128
    :cond_2
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 129
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 132
    :cond_3
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/audioprofile/SeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 45
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Lcom/mediatek/audioprofile/SeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mUiHandler:Lcom/mediatek/audioprofile/SeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 175
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 178
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "AudioProfile_SeekBarVolumizer"

    const-string v2, "Start sample."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mCallback:Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;

    invoke-interface {v1, p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;->onSampleStarting(Lcom/mediatek/audioprofile/SeekBarVolumizer;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AudioProfile_SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 213
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return-void

    .line 182
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setVolume(IIZ)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 366
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 368
    if-eqz p3, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 385
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-interface {v0, v1, p2}, Lcom/mediatek/settings/ext/IAudioProfileExt;->setRingerVolume(Landroid/media/AudioManager;I)V

    goto :goto_0

    .line 378
    :cond_1
    if-eqz p3, :cond_2

    .line 379
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/settings/ext/IAudioProfileExt;->setVolume(Landroid/media/AudioManager;II)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    const-string v0, "AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->saveVolume()V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 250
    if-nez p3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 265
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postStartSample()V

    .line 269
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 259
    iput p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    .line 260
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 204
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method public ringtoneChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 415
    const-string v1, "AudioProfile_SeekBarVolumizer"

    const-string v2, "Ringtone changed."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "newRingtoneUri":Landroid/net/Uri;
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    if-ne v1, v3, :cond_2

    .line 418
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 425
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 427
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 431
    :cond_1
    return-void

    .line 420
    :cond_2
    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 421
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public saveVolume()V
    .locals 4

    .prologue
    .line 391
    const-string v0, "AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Save Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 394
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    const/4 v2, 0x5

    iget v3, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActiveProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    const-string v0, "AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, save system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->setVolume(IIZ)V

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    const-string v0, "AudioProfile_SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 146
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    return-void

    .line 148
    :cond_1
    iget v0, p0, Lcom/mediatek/audioprofile/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->postStopSample()V

    .line 281
    return-void
.end method
