.class Lcom/android/extrasettings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/TrustedCredentialsSettings;->addTab(Lcom/android/extrasettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$2;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$2;->this$0:Lcom/android/extrasettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/extrasettings/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/extrasettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/TrustedCredentialsSettings;->access$800(Lcom/android/extrasettings/TrustedCredentialsSettings;Lcom/android/extrasettings/TrustedCredentialsSettings$CertHolder;)V

    .line 245
    return-void
.end method
