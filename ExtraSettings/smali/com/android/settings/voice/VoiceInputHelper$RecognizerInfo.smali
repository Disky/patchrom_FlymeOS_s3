.class public Lcom/android/extrasettings/voice/VoiceInputHelper$RecognizerInfo;
.super Lcom/android/extrasettings/voice/VoiceInputHelper$BaseInfo;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/voice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizerInfo"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "_service"    # Landroid/content/pm/ServiceInfo;
    .param p3, "_settings"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/extrasettings/voice/VoiceInputHelper$BaseInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 89
    return-void
.end method
