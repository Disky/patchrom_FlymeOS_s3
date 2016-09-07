.class public Lcom/mediatek/settings/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISimManagementExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSimManagementExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/PreferenceFragment;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public customizeSmsChoiceArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    return-void
.end method

.method public customizeSmsChoiceValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "smsValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    return-void
.end method

.method public customizeSmsChoiceValueArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "smsValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public customizeVoiceChoiceArray(Ljava/util/List;Z)V
    .locals 0
    .param p2, "voipAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "voiceList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    return-void
.end method

.method public dealWithDataConnChanged(Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isResumed"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public enableSwitchForSimInfoPref()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultSmsSubIdForAuto()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getSmsAutoItemIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    return-void
.end method

.method public initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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

    .prologue
    .line 122
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "smsSubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method

.method public isNeedsetAutoItem()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public registerObserver()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public setToClosedSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 66
    return-void
.end method

.method public showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V
    .locals 2
    .param p1, "prefFragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "isResumed"    # Z

    .prologue
    .line 60
    const-string v0, "DefaultSimManagementExt"

    const-string v1, "showChangeDataConnDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public switchDefaultDataSub(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterObserver()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public updateDefaultSIMSummary(Landroid/preference/Preference;I)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "subId"    # I

    .prologue
    .line 54
    return-void
.end method

.method public updateDefaultSettingsItem(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 94
    return-void
.end method

.method public updateSimEditorPref(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 46
    return-void
.end method

.method public updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 31
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "pref3GService":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .line 34
    .local v2, "prefWapPush":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .line 35
    .local v1, "prefStatus":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 36
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove pref3GService"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 39
    :cond_0
    if-eqz v1, :cond_1

    .line 40
    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove prefStatus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 43
    :cond_1
    return-void
.end method

.method public updateSimNumberMaxLength(Landroid/preference/EditTextPreference;I)V
    .locals 0
    .param p1, "editTextPreference"    # Landroid/preference/EditTextPreference;
    .param p2, "slotId"    # I

    .prologue
    .line 103
    return-void
.end method
