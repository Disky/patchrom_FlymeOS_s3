.class public Lcom/mediatek/settings/ext/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"


# static fields
.field public static final MTK_GEMINI_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "ro.mtk_gemini_support"

    invoke-static {v0}, Lcom/mediatek/settings/ext/FeatureOption;->getValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/ext/FeatureOption;->MTK_GEMINI_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
