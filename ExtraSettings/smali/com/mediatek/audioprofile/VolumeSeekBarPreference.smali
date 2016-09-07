.class public Lcom/mediatek/audioprofile/VolumeSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

.field private mKey:Ljava/lang/String;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStream:I

.field private mVolumizer:Lcom/mediatek/audioprofile/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/VolumeSeekBarPreference;)Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/VolumeSeekBarPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mCallback:Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSeekBar()Lcom/mediatek/audioprofile/SeekBarVolumizer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mVolumizer:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    return-object v0
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 78
    iget v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_1

    .line 79
    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer  "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 83
    const v0, 0x102035e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 84
    .local v6, "seekBar":Landroid/widget/SeekBar;
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eq v6, v0, :cond_0

    .line 85
    iput-object v6, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 86
    new-instance v4, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;

    invoke-direct {v4, p0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference$1;-><init>(Lcom/mediatek/audioprofile/VolumeSeekBarPreference;)V

    .line 94
    .local v4, "sbvc":Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;
    iget v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v3

    .line 95
    .local v3, "sampleUri":Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mVolumizer:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/mediatek/audioprofile/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mStream:I

    iget-object v5, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mKey:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/mediatek/audioprofile/SeekBarVolumizer$Callback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mVolumizer:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mVolumizer:Lcom/mediatek/audioprofile/SeekBarVolumizer;

    iget-object v1, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 94
    .end local v3    # "sampleUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mCallback:Lcom/mediatek/audioprofile/VolumeSeekBarPreference$Callback;

    .line 66
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mKey:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setStream(I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/audioprofile/VolumeSeekBarPreference;->mStream:I

    .line 62
    return-void
.end method
