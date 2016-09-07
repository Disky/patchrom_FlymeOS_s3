.class Lcom/android/extrasettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/extrasettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

.field private mController:Lcom/android/extrasettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/extrasettings/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/extrasettings/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean p4, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mEdit:Z

    .line 56
    iput-object p2, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    iput-object p3, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/extrasettings/wifi/AccessPoint;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/extrasettings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "hideSubmitButton"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/extrasettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    .line 49
    iput-boolean p5, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 50
    return-void
.end method

.method private modifyIpTitle(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f100285

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    .local v1, "ipSettingsView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP"

    const-string v4, "IPv4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f100286

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, "ipAddressView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP"

    const-string v4, "IPv4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/extrasettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/extrasettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/wifi/WifiDialog;->modifyIpTitle(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 74
    new-instance v0, Lcom/android/extrasettings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/extrasettings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/extrasettings/wifi/WifiConfigController;-><init>(Lcom/android/extrasettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/extrasettings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiConfigController;->hideSubmitButton()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mController:Lcom/android/extrasettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/extrasettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/extrasettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/extrasettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/extrasettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/extrasettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    return-void
.end method
