.class public Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 66
    sput-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    .line 89
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 95
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 112
    new-instance v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 113
    new-instance v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 114
    new-instance v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v0, v3}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 115
    new-instance v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 89
    nop

    :array_0
    .array-data 4
        0x7f020012
        0x7f020011
        0x7f020013
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x7f02000f
        0x7f02000e
        0x7f020010
    .end array-data

    .line 101
    :array_2
    .array-data 4
        0x7f020015
        0x7f020014
        0x7f020016
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 1026
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    .prologue
    .line 59
    sput-object p0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/extrasettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f100226

    const v5, 0x7f100223

    const v4, 0x7f100220

    const/16 v3, 0x8

    .line 706
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "buildUpdate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400f5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 709
    .local v0, "views":Landroid/widget/RemoteViews;
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WLAN_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 710
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 715
    :goto_0
    const v1, 0x7f10022c

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 718
    const v1, 0x7f100229

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 721
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 722
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 727
    :goto_1
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_BT_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 728
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 734
    :goto_2
    invoke-static {v0, p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 735
    return-object v0

    .line 713
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 732
    :cond_2
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 670
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 673
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 675
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 901
    :goto_0
    return v0

    .line 899
    :catch_0
    move-exception v1

    .line 901
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 912
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 914
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    .line 918
    .end local v0    # "brightnessMode":I
    :goto_0
    return v2

    .restart local v0    # "brightnessMode":I
    :cond_0
    move v2, v3

    .line 914
    goto :goto_0

    .line 915
    .end local v0    # "brightnessMode":I
    :catch_0
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 918
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 831
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 832
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 834
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 836
    .local v1, "pi":Landroid/app/PendingIntent;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent , buttonId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    :try_start_0
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    .line 930
    .local v6, "power":Landroid/os/IPowerManager;
    if-eqz v6, :cond_2

    .line 931
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 933
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 934
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v7, "screen_brightness"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 936
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 940
    .local v1, "brightnessMode":I
    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 942
    .local v4, "mgr":Landroid/hardware/SensorManager;
    if-eqz v4, :cond_0

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 943
    const-string v7, "screen_brightness_mode"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 946
    :cond_0
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "begin ------toggleBrightness() ,brightnessMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 973
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 974
    const/4 v1, 0x0

    .line 997
    :goto_0
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 999
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1006
    :goto_1
    if-nez v1, :cond_1

    .line 1007
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----------toggleBrightness()----setBacklightBrightness()----brightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-interface {v6, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 1010
    const-string v7, "screen_brightness"

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1012
    :cond_1
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end ------toggleBrightness(),brightnessMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screen_brightness_mode"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screen_brightness"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "mgr":Landroid/hardware/SensorManager;
    .end local v5    # "pm":Landroid/os/PowerManager;
    .end local v6    # "power":Landroid/os/IPowerManager;
    :cond_2
    :goto_2
    return-void

    .line 975
    .restart local v0    # "brightness":I
    .restart local v1    # "brightnessMode":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "mgr":Landroid/hardware/SensorManager;
    .restart local v5    # "pm":Landroid/os/PowerManager;
    .restart local v6    # "power":Landroid/os/IPowerManager;
    :cond_3
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 976
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 977
    :cond_4
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 978
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 980
    :cond_5
    const-string v7, "SettingsAppWidgetProvider"

    const-string v8, "toggleBrightness(),MAXIMUM -> AUTO"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v1, 0x1

    .line 982
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 1004
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 1018
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "mgr":Landroid/hardware/SensorManager;
    .end local v5    # "pm":Landroid/os/PowerManager;
    .end local v6    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 1019
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1020
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1021
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleBrightness2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 12
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v11, 0x7f10022d

    const v10, 0x7f10022c

    const v9, 0x7f0907ce

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 759
    const-string v4, "SettingsAppWidgetProvider"

    const-string v5, "updateButtons()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_WLAN_SUPPORT:Z

    if-eqz v4, :cond_0

    .line 761
    sget-object v4, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 764
    :cond_0
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_BT_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 765
    sget-object v4, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 768
    :cond_1
    sget-boolean v4, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v4, :cond_2

    .line 769
    sget-object v4, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 772
    :cond_2
    sget-object v4, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 774
    invoke-static {p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 775
    const-string v4, "SettingsAppWidgetProvider"

    const-string v5, "updateButtons , getBrightnessMode(context) == true, auto"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0907cf

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 779
    const v4, 0x7f02003b

    invoke-virtual {p0, v11, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 781
    const v4, 0x7f10022e

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 820
    :goto_0
    return-void

    .line 784
    :cond_3
    invoke-static {p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 785
    .local v0, "brightness":I
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateButtons, getBrightnessMode(context) == false ,manual , brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 788
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 790
    .local v1, "full":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 792
    .local v2, "half":I
    if-le v0, v1, :cond_4

    .line 793
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f090002

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 796
    const v4, 0x7f02003c

    invoke-virtual {p0, v11, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 812
    :goto_1
    if-le v0, v2, :cond_6

    .line 813
    const v4, 0x7f10022e

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 798
    :cond_4
    if-le v0, v2, :cond_5

    .line 799
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f090003

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 802
    const v4, 0x7f02003d

    invoke-virtual {p0, v11, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 805
    :cond_5
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0907d0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 808
    const v4, 0x7f02003e

    invoke-virtual {p0, v11, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 816
    :cond_6
    const v4, 0x7f10022e

    const v5, 0x7f020013

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 744
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "updateWidget()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 747
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 748
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 749
    invoke-static {p0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 750
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 698
    const/4 v0, 0x0

    sput-object v0, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 700
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    invoke-static {p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 692
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 848
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 849
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "action":Ljava/lang/String;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive , action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive , intent.hasCategory(Intent.CATEGORY_ALTERNATIVE)= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_WLAN_SUPPORT:Z

    if-eqz v3, :cond_2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 855
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 885
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 886
    :cond_1
    return-void

    .line 856
    :cond_2
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_BT_SUPPORT:Z

    if-eqz v3, :cond_3

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 858
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 859
    :cond_3
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v3, :cond_4

    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 860
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 861
    :cond_4
    sget-object v3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 862
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 863
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 865
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 866
    .local v1, "buttonId":I
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_WLAN_SUPPORT:Z

    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 867
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 868
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 869
    invoke-direct {p0, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 870
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 871
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 872
    :cond_8
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 873
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 874
    :cond_9
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_BT_SUPPORT:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 875
    sget-object v3, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 680
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "onUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {p1}, Lcom/android/extrasettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 684
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 685
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_0
    return-void
.end method
