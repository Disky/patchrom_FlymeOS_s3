.class public Lcom/mediatek/settings/ext/IWifiExt$Builder;
.super Ljava/lang/Object;
.source "IWifiExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ext/IWifiExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEdit:Z

.field private mNetworkId:I

.field private mSecurity:I

.field private mSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method public getEdit()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mNetworkId:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSecurity:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Landroid/view/View;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    .line 163
    return-object p0
.end method

.method public setNetworkId(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mNetworkId:I

    .line 154
    return-object p0
.end method

.method public setSecurity(I)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "security"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSecurity:I

    .line 146
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mSsid:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    .line 171
    return-object p0
.end method
