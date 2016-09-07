.class Lcom/mediatek/nfc/SecurityItemPreference;
.super Landroid/preference/Preference;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 374
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 375
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 381
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/SecurityItemPreference;->setLayoutResource(I)V

    .line 382
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 387
    const v0, 0x7f100049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 388
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const v0, 0x7f100048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 390
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 392
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/mediatek/nfc/SecurityItemPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 409
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 410
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    :goto_1
    return-void

    .line 407
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/SecurityItemPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 416
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 426
    const-string v1, "SecurityItemPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 433
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 434
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 397
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 401
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1
    return-void
.end method
