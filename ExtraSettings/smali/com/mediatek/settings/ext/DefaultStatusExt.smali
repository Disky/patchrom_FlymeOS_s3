.class public Lcom/mediatek/settings/ext/DefaultStatusExt;
.super Ljava/lang/Object;
.source "DefaultStatusExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IStatusExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/IntentFilter;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public customizeGeminiImei(Ljava/lang/String;Ljava/lang/String;Landroid/preference/PreferenceScreen;I)V
    .locals 0
    .param p1, "imeiKey"    # Ljava/lang/String;
    .param p2, "imeiSvKey"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;
    .param p4, "slotId"    # I

    .prologue
    .line 43
    return-void
.end method

.method public updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
