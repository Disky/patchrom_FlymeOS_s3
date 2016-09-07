.class public Lcom/mediatek/settings/sim/RadioPowerPreference;
.super Landroid/preference/Preference;
.source "RadioPowerPreference.java"


# instance fields
.field protected mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected mPowerEnabled:Z

.field protected mPowerState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 26
    const v0, 0x7f0400b5

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->setWidgetLayoutResource(I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 58
    const v1, 0x7f100196

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 59
    .local v0, "radioSwitch":Landroid/widget/Switch;
    if-eqz v0, :cond_0

    .line 60
    iget-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    iget-boolean v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 62
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method public setRadioEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerEnabled:Z

    .line 44
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->notifyChanged()V

    .line 45
    return-void
.end method

.method public setRadioOn(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mPowerState:Z

    .line 35
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/RadioPowerPreference;->notifyChanged()V

    .line 36
    return-void
.end method

.method public setRadioPowerChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerPreference;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 53
    return-void
.end method
