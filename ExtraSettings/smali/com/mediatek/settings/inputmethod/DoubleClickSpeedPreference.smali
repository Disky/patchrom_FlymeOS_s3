.class public Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;
.super Landroid/preference/DialogPreference;
.source "DoubleClickSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;

.field private mOldSpeed:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference$1;-><init>(Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 58
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setDialogLayoutResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->createActionButtons()V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method private onSpeedChanged()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_double_click_speed"

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, "speed":I
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit16 v2, v0, -0xc8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    invoke-virtual {v1, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setDurationTime(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 91
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setPositiveButtonText(I)V

    .line 92
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->setNegativeButtonText(I)V

    .line 93
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_double_click_speed"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mOldSpeed:I

    .line 82
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mOldSpeed:I

    add-int/lit16 v1, v1, -0xc8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    const v0, 0x7f1000b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    iput-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    iget v1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mOldSpeed:I

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setDurationTime(I)V

    .line 87
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 109
    const-string v1, "pointer_double_click_speed"

    iget-object v2, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setDurationTime(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTouchInProgress:Z

    .line 123
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTouchInProgress:Z

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mTestArea:Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/inputmethod/DoubleClickTestArea;->setDurationTime(I)V

    .line 128
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_double_click_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/settings/inputmethod/DoubleClickSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    return-void
.end method
