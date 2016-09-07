.class public Lcom/mediatek/settings/ext/DefaultSubSelectDialogPreferenceExt;
.super Ljava/lang/Object;
.source "DefaultSubSelectDialogPreferenceExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISubSelectDialogPreferenceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSubSelectDialogPreferenceExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/preference/Preference;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateDefaultSimPreferenceLayout(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 22
    const-string v0, "DefaultSubSelectDialogPreferenceExt"

    const-string v1, "updateDefaultSimPreferenceLayout"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public updateDefaultSimPreferenceSimIndicator(Landroid/view/View;Ljava/util/List;I)V
    .locals 2
    .param p1, "viewContainer"    # Landroid/view/View;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v0, "DefaultSubSelectDialogPreferenceExt"

    const-string v1, "updateDefaultSimPreferenceLayout"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
