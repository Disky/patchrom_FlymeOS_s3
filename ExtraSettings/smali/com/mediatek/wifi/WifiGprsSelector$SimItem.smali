.class Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
.super Ljava/lang/Object;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimItem"
.end annotation


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimIconBitmap:Landroid/graphics/Bitmap;

.field public mSlot:I

.field public mState:I

.field public mSubId:I

.field private mWifiGprsSeletor:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionInfo;Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 4
    .param p1, "subinfo"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "wifiGprsSelector"    # Lcom/mediatek/wifi/WifiGprsSelector;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-boolean v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 911
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 912
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    .line 914
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 915
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 916
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    .line 917
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    .line 918
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimIconBitmap:Landroid/graphics/Bitmap;

    .line 919
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mWifiGprsSeletor:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 930
    iput-boolean v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 931
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 932
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 933
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 934
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 935
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    .line 936
    iput-object p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mWifiGprsSeletor:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 937
    invoke-virtual {p2}, Lcom/mediatek/wifi/WifiGprsSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimIconBitmap:Landroid/graphics/Bitmap;

    .line 938
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "simID"    # J
    .param p5, "wifiGprsSelector"    # Lcom/mediatek/wifi/WifiGprsSelector;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 911
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 912
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    .line 913
    iput v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    .line 914
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 915
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSlot:I

    .line 916
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    .line 917
    iput v2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSubId:I

    .line 918
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mSimIconBitmap:Landroid/graphics/Bitmap;

    .line 919
    iput-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mWifiGprsSeletor:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 923
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    .line 924
    iput p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    .line 925
    iput-boolean v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    .line 926
    iput-object p5, p0, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mWifiGprsSeletor:Lcom/mediatek/wifi/WifiGprsSelector;

    .line 927
    return-void
.end method
