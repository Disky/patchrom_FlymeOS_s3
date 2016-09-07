.class public Lcom/mediatek/wifi/WifiWpsEmDialog;
.super Landroid/app/AlertDialog;
.source "WifiWpsEmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mIsOnlyVisibilityWpsPin:Z

.field mKey:Landroid/widget/EditText;

.field mPinCode:Landroid/widget/EditText;

.field private mPinSecuritySpinner:Landroid/widget/Spinner;

.field mSsid:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessPoint"    # Lcom/mediatek/wifi/AccessPoint;
    .param p3, "isOnlyVisibilityWpsPin"    # Z

    .prologue
    .line 41
    const v0, 0x7f0a0043

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    .line 43
    iput-object p1, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean p3, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mIsOnlyVisibilityWpsPin:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/WifiWpsEmDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/WifiWpsEmDialog;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mIsOnlyVisibilityWpsPin:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/WifiWpsEmDialog;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/WifiWpsEmDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wifi/WifiWpsEmDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/WifiWpsEmDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const v7, 0x7f100290

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 103
    if-ne p2, v4, :cond_1

    .line 104
    const-string v2, "WifiWpsEmDialog"

    const-string v3, "onClick, save configuration"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v2, Lcom/mediatek/wifi/WifiWpsEmDialog$1;

    invoke-direct {v2, p0}, Lcom/mediatek/wifi/WifiWpsEmDialog$1;-><init>(Lcom/mediatek/wifi/WifiWpsEmDialog;)V

    iput-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 120
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 121
    .local v0, "config":Landroid/net/wifi/WpsInfo;
    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 122
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 123
    iget-boolean v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mIsOnlyVisibilityWpsPin:Z

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget v2, v2, Lcom/mediatek/wifi/AccessPoint;->networkId:I

    if-eq v2, v4, :cond_2

    .line 125
    :cond_0
    const-string v2, "WifiWpsEmDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsExternalRegistrar, config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->startWpsExternalRegistrar(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 160
    .end local v0    # "config":Landroid/net/wifi/WpsInfo;
    :cond_1
    :goto_0
    return-void

    .line 128
    .restart local v0    # "config":Landroid/net/wifi/WpsInfo;
    :cond_2
    const-string v2, "WifiWpsEmDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWps, config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-object v2, v2, Lcom/mediatek/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 134
    .local v1, "nfcPasswordCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    const-string v3, "Please enter PIN code"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_pw"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-object v2, v2, Lcom/mediatek/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_8

    .line 146
    const-string v2, "OPEN"

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    .line 147
    const-string v2, "NONE"

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    .line 153
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    .line 154
    const-string v2, "WifiWpsEmDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWpsRegistrar, config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto/16 :goto_0

    .line 141
    :cond_7
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_pw"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 149
    :cond_8
    iget-object v2, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 150
    const-string v2, "WPA2PSK"

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    .line 151
    const-string v2, "CCMP"

    iput-object v2, v0, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f10028b

    const v5, 0x7f10028a

    const v4, 0x7f100289

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f10028c

    if-ne v0, v3, :cond_2

    .line 81
    const-string v0, "WifiWpsEmDialog"

    const-string v3, "onClick wifi_defalut_pins_togglebox clicked hide PIN items"

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 92
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f100290

    if-ne v0, v3, :cond_0

    .line 93
    const-string v0, "WifiWpsEmDialog"

    const-string v3, "onClick nfc_password_token_togglebox clicked disable PIN items"

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, "WifiWpsEmDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nfc_password_token_togglebox is checked : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v3, 0x7f10028e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 50
    invoke-virtual {p0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setView(Landroid/view/View;)V

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mIsOnlyVisibilityWpsPin:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f100288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f10028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mAccessPoint:Lcom/mediatek/wifi/AccessPoint;

    iget-object v0, v0, Lcom/mediatek/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0903d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0903d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f10028c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f10028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    .line 66
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f100289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mSsid:Landroid/widget/EditText;

    .line 67
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f10028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mKey:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mView:Landroid/view/View;

    const v1, 0x7f10028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinCode:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setInverseBackgroundForced(Z)V

    .line 74
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void

    .line 59
    :cond_1
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/WifiWpsEmDialog;->setTitle(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 165
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "WifiWpsEmDialog"

    const-string v1, "onItemSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mPinSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mKey:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiWpsEmDialog;->mKey:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
