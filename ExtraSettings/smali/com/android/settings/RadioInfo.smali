.class public Lcom/android/extrasettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/RadioInfo$24;,
        Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private SignalGain:I

.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private imsVoLteProvisionedButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 139
    iput-boolean v2, p0, Lcom/android/extrasettings/RadioInfo;->mMwiValue:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/extrasettings/RadioInfo;->mCfiValue:Z

    .line 145
    iput v2, p0, Lcom/android/extrasettings/RadioInfo;->SignalGain:I

    .line 148
    new-instance v0, Lcom/android/extrasettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$1;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 192
    new-instance v0, Lcom/android/extrasettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$2;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 882
    new-instance v0, Lcom/android/extrasettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$7;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 897
    new-instance v0, Lcom/android/extrasettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$8;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 912
    new-instance v0, Lcom/android/extrasettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$9;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 928
    new-instance v0, Lcom/android/extrasettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$10;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 935
    new-instance v0, Lcom/android/extrasettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$11;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 944
    new-instance v0, Lcom/android/extrasettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$12;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 962
    new-instance v0, Lcom/android/extrasettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$13;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 987
    new-instance v0, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;

    .line 991
    new-instance v0, Lcom/android/extrasettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$14;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1017
    new-instance v0, Lcom/android/extrasettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$15;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1033
    new-instance v0, Lcom/android/extrasettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$16;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    .line 1085
    new-instance v0, Lcom/android/extrasettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$17;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v0, Lcom/android/extrasettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$18;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1115
    new-instance v0, Lcom/android/extrasettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$19;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1128
    new-instance v0, Lcom/android/extrasettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$20;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1134
    new-instance v0, Lcom/android/extrasettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$21;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1142
    new-instance v0, Lcom/android/extrasettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$22;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1148
    new-instance v0, Lcom/android/extrasettings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/RadioInfo$23;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1161
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/extrasettings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/extrasettings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateImsVoLteProvisionedState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/extrasettings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/extrasettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/extrasettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/extrasettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/extrasettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/extrasettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/extrasettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/extrasettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/extrasettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/extrasettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/extrasettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/extrasettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/extrasettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/extrasettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/extrasettings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/extrasettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/extrasettings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/extrasettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/extrasettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 775
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 777
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 778
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 779
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 780
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 784
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 788
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 782
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 1004
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isImsVoLteProvisioned()Z
    .locals 3

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1062
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v1

    .line 1064
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1097
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1029
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1177
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-void
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 755
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 756
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 757
    .local v2, "status":I
    if-nez v2, :cond_0

    .line 758
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 769
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :goto_0
    return-void

    .line 760
    .restart local v1    # "p":Ljava/lang/Process;
    .restart local v2    # "status":I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 762
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 764
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 766
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 735
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 736
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 737
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 738
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 739
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 748
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :goto_0
    return-void

    .line 741
    .restart local v1    # "ipAddress":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "status":I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 743
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 745
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 792
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/extrasettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 466
    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v3, "value":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 566
    const/4 v2, 0x0

    .line 567
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 568
    .local v0, "ci":Landroid/telephony/CellInfo;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 573
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 577
    .end local v0    # "ci":Landroid/telephony/CellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 649
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 650
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f090180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 668
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    return-void

    .line 655
    :pswitch_0
    const v3, 0x7f09017e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    goto :goto_0

    .line 658
    :pswitch_1
    const v3, 0x7f09017d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    goto :goto_0

    .line 661
    :pswitch_2
    const v3, 0x7f09017c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    goto :goto_0

    .line 664
    :pswitch_3
    const v3, 0x7f09017f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 697
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 716
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    .line 717
    .local v10, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    .line 718
    .local v6, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    .line 719
    .local v8, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    .line 721
    .local v4, "rxBytes":J
    const v3, 0x7f090181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "packets":Ljava/lang/String;
    const v3, 0x7f090182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "bytes":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    return-void

    .line 469
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1009
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09016c

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    return-void

    .line 1009
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f09016b

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateImsVoLteProvisionedState()V
    .locals 3

    .prologue
    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090a7f

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    return-void

    .line 1069
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f090a7e

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 13
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v12, -0x1

    .line 507
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 508
    .local v7, "r":Landroid/content/res/Resources;
    instance-of v9, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_2

    move-object v4, p1

    .line 509
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 510
    .local v4, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 511
    .local v2, "lac":I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 512
    .local v1, "cid":I
    iget-object v10, p0, Lcom/android/extrasettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090185

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v2, v12, :cond_0

    const-string v9, "unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v11, 0x7f090186

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v1, v12, :cond_1

    const-string v9, "unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 512
    .restart local v1    # "cid":I
    .restart local v2    # "lac":I
    .restart local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 517
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v9, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_8

    move-object v4, p1

    .line 518
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 519
    .local v4, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 520
    .local v0, "bid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    .line 521
    .local v8, "sid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 522
    .local v6, "nid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 523
    .local v3, "lat":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    .line 524
    .local v5, "lon":I
    iget-object v10, p0, Lcom/android/extrasettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v0, v12, :cond_3

    const-string v9, "unknown"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "SID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v8, v12, :cond_4

    const-string v9, "unknown"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "NID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v6, v12, :cond_5

    const-string v9, "unknown"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LAT = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v3, v12, :cond_6

    const-string v9, "unknown"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LONG = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v12, :cond_7

    const-string v9, "unknown"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 539
    .end local v0    # "bid":I
    .end local v3    # "lat":I
    .end local v4    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5    # "lon":I
    .end local v6    # "nid":I
    .end local v8    # "sid":I
    :cond_8
    iget-object v9, p0, Lcom/android/extrasettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09016e

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    return-void

    .line 1102
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f09016d

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/extrasettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    return-void

    .line 552
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 553
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 557
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 673
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "gsm.network.type"

    const v3, 0x7f090180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 628
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 629
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 630
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f090180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "display":Ljava/lang/String;
    sget-object v3, Lcom/android/extrasettings/RadioInfo$24;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 644
    :goto_0
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    return-void

    .line 634
    :pswitch_0
    const v3, 0x7f090179

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    goto :goto_0

    .line 637
    :pswitch_1
    const v3, 0x7f09017a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    goto :goto_0

    .line 640
    :pswitch_2
    const v3, 0x7f09017b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f090180

    .line 795
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 797
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 798
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 799
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 801
    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    new-instance v4, Lcom/android/extrasettings/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/android/extrasettings/RadioInfo$3;-><init>(Lcom/android/extrasettings/RadioInfo;)V

    .line 812
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/extrasettings/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/extrasettings/RadioInfo$4;-><init>(Lcom/android/extrasettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 819
    .local v3, "ipAddr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 821
    new-instance v1, Lcom/android/extrasettings/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/extrasettings/RadioInfo$5;-><init>(Lcom/android/extrasettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 828
    .local v1, "hostname":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 830
    new-instance v2, Lcom/android/extrasettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/extrasettings/RadioInfo$6;-><init>(Lcom/android/extrasettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 837
    .local v2, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 838
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090168

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    return-void

    .line 457
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f090167

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f090180

    .line 682
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 684
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 690
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    .prologue
    .line 597
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 598
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 599
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 600
    .local v1, "r":Landroid/content/res/Resources;
    const v4, 0x7f090180

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "display":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 615
    :goto_0
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f090177

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 623
    :goto_1
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    return-void

    .line 604
    :pswitch_0
    const v4, 0x7f090173

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    goto :goto_0

    .line 608
    :pswitch_1
    const v4, 0x7f090175

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    goto :goto_0

    .line 611
    :pswitch_2
    const v4, 0x7f090176

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 620
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f090178

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 477
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 478
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 482
    :cond_0
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 487
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 489
    :cond_2
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 491
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 496
    :cond_3
    iget v4, p0, Lcom/android/extrasettings/RadioInfo;->SignalGain:I

    if-eqz v4, :cond_4

    const/16 v4, -0x3c

    if-ge v2, v4, :cond_4

    const/16 v4, -0x6e

    if-le v2, v4, :cond_4

    .line 497
    iget v4, p0, Lcom/android/extrasettings/RadioInfo;->SignalGain:I

    add-int/2addr v2, v4

    .line 500
    :cond_4
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090183

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090184

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09016a

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    return-void

    .line 1077
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f090169

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    const v4, 0x7f0400b4

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->setContentView(I)V

    .line 267
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 270
    const v4, 0x7f10016f

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f10010e

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f100180

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f100170

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f10017a

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f10017b

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f10017c

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 277
    const v4, 0x7f10017d

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f100175

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 279
    const v4, 0x7f10017e

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f10017f

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 281
    const v4, 0x7f100176

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 282
    const v4, 0x7f100177

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 283
    const v4, 0x7f100178

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f100179

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 286
    const v4, 0x7f100181

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 287
    const v4, 0x7f100182

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 288
    const v4, 0x7f100183

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f100184

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 290
    const v4, 0x7f100187

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 291
    const v4, 0x7f100185

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 292
    const v4, 0x7f100186

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 293
    const v4, 0x7f100192

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 294
    const v4, 0x7f100194

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 296
    const v4, 0x7f100172

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 297
    const v4, 0x7f100173

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 298
    const v4, 0x7f100174

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 300
    const v4, 0x7f100188

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 301
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 303
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 304
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 305
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 307
    const v4, 0x7f100189

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 308
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v4, 0x7f10018a

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 311
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoListRateHandler:Lcom/android/extrasettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v4, 0x7f10018b

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 314
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v4, 0x7f10018c

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    .line 317
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f10018d

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 320
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v4, 0x7f10018e

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 323
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x7f100171

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 326
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v4, 0x7f100190

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 328
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v4, 0x7f100191

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 330
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v4, 0x7f100193

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 332
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v4, 0x7f100195

    invoke-virtual {p0, v4}, Lcom/android/extrasettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 335
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 337
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 340
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 344
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 345
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 346
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 348
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 350
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 353
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 356
    iget-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mCellInfoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/extrasettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/extrasettings/RadioInfo;->SignalGain:I

    .line 364
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    const v0, 0x7f090224

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 416
    const v0, 0x7f09016f

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 418
    const/4 v0, 0x2

    const v1, 0x7f090170

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 420
    const/4 v0, 0x3

    const v1, 0x7f090171

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 422
    const/4 v0, 0x4

    const v1, 0x7f090172

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 424
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 426
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 408
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 409
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 432
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 433
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 434
    .local v1, "state":I
    const/4 v2, 0x1

    .line 436
    .local v2, "visible":Z
    packed-switch v1, :pswitch_data_0

    .line 445
    :pswitch_0
    const/4 v2, 0x0

    .line 448
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    const/4 v3, 0x1

    return v3

    .line 439
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 442
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 370
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePhoneState()V

    .line 371
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateSignalStrength()V

    .line 372
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateMessageWaiting()V

    .line 373
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateCallRedirect()V

    .line 374
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateServiceState()V

    .line 375
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 376
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataState()V

    .line 377
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataStats()V

    .line 378
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDataStats2()V

    .line 379
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updatePowerState()V

    .line 380
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateCellInfoListRate()V

    .line 381
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateImsRegRequiredState()V

    .line 382
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateImsVoLteProvisionedState()V

    .line 383
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateSmsOverImsState()V

    .line 384
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateLteRamDumpState()V

    .line 385
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateProperties()V

    .line 386
    invoke-direct {p0}, Lcom/android/extrasettings/RadioInfo;->updateDnsCheckState()V

    .line 388
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/extrasettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 391
    iget-object v0, p0, Lcom/android/extrasettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/extrasettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x24dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 399
    return-void
.end method
