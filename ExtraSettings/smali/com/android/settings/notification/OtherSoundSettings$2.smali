.class final Lcom/android/extrasettings/notification/OtherSoundSettings$2;
.super Lcom/android/extrasettings/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/extrasettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    # invokes: Lcom/android/extrasettings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/extrasettings/notification/OtherSoundSettings;->access$000(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method