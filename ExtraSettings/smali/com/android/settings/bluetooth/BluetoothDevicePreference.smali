.class public final Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    sget v2, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 68
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 70
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 73
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 75
    const v2, 0x7f04008e

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 77
    invoke-virtual {p2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 78
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 79
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    const v2, 0x7f04008c

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 84
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const v5, 0x7f0901d4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    :cond_0
    const v5, 0x7f0901c3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "message":Ljava/lang/String;
    const v5, 0x7f0901c2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;)V

    .line 216
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/extrasettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 218
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 8

    .prologue
    .line 300
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 301
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 317
    const-string v5, "BluetoothDevicePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unrecognized device class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 324
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .line 325
    .local v2, "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 326
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 339
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;>;"
    .end local v4    # "resId":I
    :goto_1
    return v4

    .line 304
    :sswitch_0
    const v4, 0x7f020050

    goto :goto_1

    .line 307
    :sswitch_1
    const v4, 0x7f02004a

    goto :goto_1

    .line 310
    :sswitch_2
    invoke-static {v0}, Lcom/android/extrasettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 313
    :sswitch_3
    const v4, 0x7f02004e

    goto :goto_1

    .line 320
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 331
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    const v4, 0x7f02004c

    goto :goto_1

    .line 335
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    const v4, 0x7f02004d

    goto :goto_1

    .line 339
    :cond_4
    const v4, 0x7f020079

    goto :goto_1

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 10

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 241
    .local v1, "cachedDevice":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getConnectionSummary"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, "profileConnected":Z
    const/4 v0, 0x0

    .line 245
    .local v0, "a2dpNotConnected":Z
    const/4 v3, 0x0

    .line 247
    .local v3, "headsetNotConnected":Z
    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .line 248
    .local v5, "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 249
    .local v2, "connectionStatus":I
    if-eqz v5, :cond_1

    .line 250
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    invoke-interface {v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    instance-of v7, v5, Lcom/android/extrasettings/bluetooth/A2dpProfile;

    if-eqz v7, :cond_2

    .line 265
    const/4 v0, 0x1

    .line 266
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "a2dpNotConnected = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-static {v2}, Lcom/android/extrasettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 295
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 258
    .restart local v2    # "connectionStatus":I
    .restart local v5    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "profileConnected = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v6, 0x1

    .line 260
    goto :goto_0

    .line 267
    :cond_2
    instance-of v7, v5, Lcom/android/extrasettings/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 268
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "headsetNotConnected = true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v3, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v6, :cond_7

    .line 277
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 278
    const v7, 0x7f0901ce

    goto :goto_1

    .line 279
    :cond_4
    if-eqz v0, :cond_5

    .line 280
    const v7, 0x7f0901cc

    goto :goto_1

    .line 281
    :cond_5
    if-eqz v3, :cond_6

    .line 282
    const v7, 0x7f0901cb

    goto :goto_1

    .line 284
    :cond_6
    const v7, 0x7f0901ca

    goto :goto_1

    .line 288
    :cond_7
    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 295
    const/4 v7, 0x0

    goto :goto_1

    .line 290
    :pswitch_3
    const v7, 0x7f0901d3

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 5

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902fb

    invoke-static {v2, v3, v4}, Lcom/android/extrasettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/extrasettings/search/SearchIndexableRaw;

    invoke-direct {v1, v0}, Lcom/android/extrasettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 228
    .local v1, "data":Lcom/android/extrasettings/search/SearchIndexableRaw;
    const-class v2, Lcom/android/extrasettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/extrasettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/extrasettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/extrasettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 231
    const v2, 0x7f020079

    iput v2, v1, Lcom/android/extrasettings/search/SearchIndexableRaw;->iconResId:I

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/extrasettings/search/SearchIndexableRaw;->enabled:Z

    .line 234
    invoke-static {v0}, Lcom/android/extrasettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/search/Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/extrasettings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 178
    instance-of v0, p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 183
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 167
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 144
    const v1, 0x7f100023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 152
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 160
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 190
    .local v0, "bondState":I
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 193
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 195
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 118
    .local v1, "summaryResId":I
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 125
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 134
    return-void

    .line 121
    .end local v0    # "iconResId":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    .restart local v0    # "iconResId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 100
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "onPrepareForRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 102
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "dismiss dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 107
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method
