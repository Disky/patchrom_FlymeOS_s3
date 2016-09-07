.class public interface abstract Lcom/mediatek/settings/ext/ISimManagementExt;
.super Ljava/lang/Object;
.source "ISimManagementExt.java"


# virtual methods
.method public abstract customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
.end method

.method public abstract customizeSmsChoiceArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeSmsChoiceValue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeSmsChoiceValueArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeVoiceChoiceArray(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract dealWithDataConnChanged(Landroid/content/Intent;Z)V
.end method

.method public abstract enableSwitchForSimInfoPref()Z
.end method

.method public abstract getDefaultSmsSubIdForAuto()I
.end method

.method public abstract getSmsAutoItemIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
.end method

.method public abstract initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerObserver()V
.end method

.method public abstract setToClosedSimSlot(I)V
.end method

.method public abstract showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
.end method

.method public abstract switchDefaultDataSub(Landroid/content/Context;I)Z
.end method

.method public abstract unregisterObserver()V
.end method

.method public abstract updateDefaultSIMSummary(Landroid/preference/Preference;I)V
.end method

.method public abstract updateDefaultSettingsItem(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract updateSimEditorPref(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract updateSimNumberMaxLength(Landroid/preference/EditTextPreference;I)V
.end method
