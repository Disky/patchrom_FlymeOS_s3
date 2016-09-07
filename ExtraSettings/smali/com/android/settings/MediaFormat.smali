.class public Lcom/android/extrasettings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/android/extrasettings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/MediaFormat$1;-><init>(Lcom/android/extrasettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/extrasettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v0, Lcom/android/extrasettings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/MediaFormat$2;-><init>(Lcom/android/extrasettings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/extrasettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/MediaFormat;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/extrasettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/MediaFormat;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/extrasettings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f100104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "finalText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    const v2, 0x7f090504

    invoke-direct {p0, v1, v2}, Lcom/android/extrasettings/MediaFormat;->getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f100105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f090505

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 137
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/extrasettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .end local v0    # "finalText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 159
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f100106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    .local v0, "initialText":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    const v2, 0x7f09000c

    invoke-direct {p0, v1, v2}, Lcom/android/extrasettings/MediaFormat;->getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f100107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 164
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    const v3, 0x7f090503

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/MediaFormat;->getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/extrasettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .end local v0    # "initialText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method private getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;
    .locals 9
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "stringId"    # I

    .prologue
    .line 202
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "volumeDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 205
    .local v1, "isInternalSD":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 207
    .local v2, "isOTG":Z
    if-eqz v6, :cond_0

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 208
    :cond_0
    const-string v7, "MediaFormat"

    const-string v8, "Volume volumeDescription is null or it is an external sd card"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_1
    :goto_1
    return-object v0

    .line 204
    .end local v1    # "isInternalSD":Z
    .end local v2    # "isOTG":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 212
    .restart local v1    # "isInternalSD":Z
    .restart local v2    # "isOTG":Z
    :cond_3
    const v7, 0x7f09018e

    invoke-virtual {p0, v7}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "sdCardString":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 215
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 217
    const-string v7, "sd"

    const-string v8, "SD"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    invoke-virtual {p0, p2}, Lcom/android/extrasettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SD"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 225
    .local v5, "tr":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 87
    new-instance v0, Lcom/android/extrasettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    const v3, 0x7f090507

    invoke-direct {p0, v2, v3}, Lcom/android/extrasettings/MediaFormat;->getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/extrasettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/extrasettings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 104
    :cond_1
    if-nez p2, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/extrasettings/MediaFormat;->finish()V

    goto :goto_0

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/android/extrasettings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 176
    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 177
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 178
    invoke-virtual {p0}, Lcom/android/extrasettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 180
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/MediaFormat;->mVolume:Landroid/os/storage/StorageVolume;

    const v2, 0x7f090501

    invoke-direct {p0, v1, v2}, Lcom/android/extrasettings/MediaFormat;->getDescription(Landroid/os/storage/StorageVolume;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0}, Lcom/android/extrasettings/MediaFormat;->establishInitialState()V

    .line 185
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 195
    invoke-virtual {p0}, Lcom/android/extrasettings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/extrasettings/MediaFormat;->establishInitialState()V

    .line 198
    :cond_0
    return-void
.end method
