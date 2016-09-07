.class public Lcom/mediatek/settings/ext/DefaultWifiExt;
.super Ljava/lang/Object;
.source "DefaultWifiExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    .line 24
    const-string v0, "DefaultWifiExt"

    const-string v1, "DefaultWifiExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method


# virtual methods
.method public addDisconnectButton(Landroid/app/AlertDialog;ZLandroid/net/NetworkInfo$DetailedState;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "edit"    # Z
    .param p3, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p4, "networkId"    # I

    .prologue
    .line 46
    return-void
.end method

.method public closeSpinnerDialog()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public getApOrder(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "currentSsid"    # Ljava/lang/String;
    .param p2, "currentSecurity"    # I
    .param p3, "otherSsid"    # Ljava/lang/String;
    .param p4, "otherSecurity"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getEapMethodbySpinnerPos(ILjava/lang/String;I)I
    .locals 0
    .param p1, "spinnerPos"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 86
    return p1
.end method

.method public getPosByEapMethod(ILjava/lang/String;I)I
    .locals 0
    .param p1, "spinnerPos"    # I
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 90
    return p1
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    return v0
.end method

.method public getPriorityView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 41
    return-object p1
.end method

.method public getSleepPolicy(Landroid/content/ContentResolver;)I
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 65
    const-string v0, "wifi_sleep_policy"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWifiApSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/settings/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    const v1, 0x10404c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V
    .locals 0
    .param p1, "builder"    # Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    return-void
.end method

.method public initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 56
    return-void
.end method

.method public initNetworkInfoView(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 59
    return-void
.end method

.method public initPreference(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 63
    return-void
.end method

.method public refreshNetworkInfoView()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public setAPNetworkId(I)V
    .locals 0
    .param p1, "apNetworkId"    # I

    .prologue
    .line 31
    return-void
.end method

.method public setAPPriority(I)V
    .locals 0
    .param p1, "apPriority"    # I

    .prologue
    .line 33
    return-void
.end method

.method public setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "security"    # I

    .prologue
    .line 82
    return-void
.end method

.method public setProxyText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 53
    return-void
.end method

.method public setSecurityText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 39
    return-void
.end method

.method public setSleepPolicyPreference(Landroid/preference/ListPreference;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepPolicyPref"    # Landroid/preference/ListPreference;
    .param p2, "sleepPolicyEntries"    # [Ljava/lang/String;
    .param p3, "sleepPolicyValues"    # [Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method
