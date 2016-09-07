.class public Lcom/mediatek/apn/ApnTypePreference;
.super Landroid/preference/DialogPreference;
.source "ApnTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private mApnTypeArray:[Ljava/lang/String;

.field private mApnTypeNum:I

.field private mCheckState:[Z

.field mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mListView:Landroid/widget/ListView;

.field private mTypeString:Ljava/lang/String;

.field private mUiCheckState:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/apn/ApnTypePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "apnType":Ljava/lang/String;
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 42
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "apn_type"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v5, "tethering"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 48
    .local v3, "isTethering":Z
    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    const v6, 0x7f0b0058

    invoke-interface {v5, p1, v6, v3}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getApnTypeArray(Landroid/content/Context;IZ)[Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "tempArray":[Ljava/lang/String;
    const-string v5, "ApnTypePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTethering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FeatureOption.MTK_VOLTE_SUPPORT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-boolean v5, Lcom/mediatek/settings/FeatureOption;->MTK_VOLTE_SUPPORT:Z

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 54
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 56
    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v6, v4, v1

    aput-object v6, v5, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const-string v7, "ims"

    aput-object v7, v5, v6

    .line 63
    .end local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 64
    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v5, v5

    iput v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    .line 66
    :cond_2
    iget v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    .line 67
    return-void

    .line 60
    :cond_3
    iput-object v4, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateRecord()V
    .locals 6

    .prologue
    .line 120
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "strTemp":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 132
    .local v1, "length":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 133
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 137
    :goto_1
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTypeString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 135
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "strTemp":Ljava/lang/StringBuilder;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateUiCheckBoxStatus()V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 93
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiCheckBoxStatus mCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public intCheckState(Ljava/lang/String;)V
    .locals 4
    .param p1, "strType"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p1, :cond_1

    .line 155
    :cond_0
    return-void

    .line 150
    :cond_1
    iput-object p1, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aput-boolean p3, v0, p2

    .line 115
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aput-boolean p3, v0, p2

    .line 116
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/mediatek/apn/ApnTypePreference;->updateUiCheckBoxStatus()V

    .line 104
    invoke-direct {p0}, Lcom/mediatek/apn/ApnTypePreference;->updateRecord()V

    .line 105
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/apn/ApnTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mediatek/apn/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/apn/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 77
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mListView:Landroid/widget/ListView;

    .line 81
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    iget-object v2, p0, Lcom/mediatek/apn/ApnTypePreference;->mCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 85
    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mUiCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/apn/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method
