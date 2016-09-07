.class public Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISettingsMiscExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addCustomizedItem(Ljava/util/List;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public customizeHeaderIcon(Landroid/widget/ImageView;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 56
    return-void
.end method

.method public customizeLocationHeaderClick(Landroid/preference/PreferenceActivity$Header;)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 43
    return-void
.end method

.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "simString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 39
    return-object p1
.end method

.method public getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    const v0, 0x10404c1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCustomizedLocationSettings(Landroid/preference/PreferenceScreen;I)V
    .locals 0
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "order"    # I

    .prologue
    .line 46
    return-void
.end method

.method public initSwitherControlers()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public isFeatureEnable()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isSwitcherHeaderType(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public needCustomizeHeaderIcon(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public pauseEnabler()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public resumeEnabler()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setEnablerSwitch(Landroid/preference/PreferenceActivity$Header;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 64
    return-void
.end method

.method public setFactoryResetTitle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 33
    return-void
.end method

.method public setTimeoutPrefTitle(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 30
    return-void
.end method

.method public updateCustomizedLocationSettings()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
