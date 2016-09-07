.class Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V
    .locals 1
    .param p2, "tab"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 417
    iput-object p3, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 418
    iput-object p2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/extrasettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p4, "x3"    # Lcom/android/extrasettings/TrustedCredentialsSettings$1;

    .prologue
    .line 410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method


# virtual methods
.method public remove(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 522
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 526
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
