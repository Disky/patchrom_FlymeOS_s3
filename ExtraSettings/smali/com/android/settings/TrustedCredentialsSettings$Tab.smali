.class final enum Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 78
    new-instance v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string v3, "system"

    const v4, 0x7f09091c

    const v5, 0x7f1001d6

    const v6, 0x7f1001d7

    const v7, 0x7f1001d8

    const v8, 0x7f1001d9

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .line 85
    new-instance v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    const-string v1, "USER"

    const/4 v2, 0x1

    const-string v3, "user"

    const v4, 0x7f09091d

    const v5, 0x7f1001da

    const v6, 0x7f1001db

    const v7, 0x7f1001dc

    const v8, 0x7f1001dd

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "label"    # I
    .param p5, "view"    # I
    .param p6, "progress"    # I
    .param p7, "list"    # I
    .param p8, "expandableList"    # I
    .param p9, "withSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 105
    iput p5, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 106
    iput p6, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 107
    iput p7, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 108
    iput p8, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 109
    iput-boolean p9, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 110
    return-void
.end method

.method static synthetic access$1800(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;ZLcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-object v1, Lcom/android/extrasettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    :pswitch_1
    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 144
    sget-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f090921

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const v0, 0x7f090922

    goto :goto_0

    .line 151
    :pswitch_1
    const v0, 0x7f090923

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 132
    sget-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$6;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f09091f

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const v0, 0x7f09091e

    goto :goto_0

    .line 139
    :pswitch_1
    const v0, 0x7f090920

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz v0, :cond_1

    .line 158
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 162
    :goto_1
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 167
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->remove(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    .line 165
    :cond_2
    # getter for: Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->load()V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
