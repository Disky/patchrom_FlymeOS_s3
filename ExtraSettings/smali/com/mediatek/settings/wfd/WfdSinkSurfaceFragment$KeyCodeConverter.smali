.class Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;
.super Ljava/lang/Object;
.source "WfdSinkSurfaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyCodeConverter"
.end annotation


# static fields
.field private static final KEYCODE_ASCII:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1068
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    .line 1117
    invoke-static {}, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->populateKeycodeAscii()V

    .line 1118
    return-void
.end method

.method public static keyCodeToAscii(I)I
    .locals 2
    .param p0, "keyCode"    # I

    .prologue
    .line 1112
    sget-object v1, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1113
    .local v0, "asciiCode":I
    return v0
.end method

.method private static populateKeycodeAscii()V
    .locals 5

    .prologue
    const/16 v2, 0x12

    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 1071
    sget-object v0, Lcom/mediatek/settings/wfd/WfdSinkSurfaceFragment$KeyCodeConverter;->KEYCODE_ASCII:Landroid/util/SparseIntArray;

    .line 1072
    .local v0, "codes":Landroid/util/SparseIntArray;
    const/16 v1, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    const/16 v1, 0x6f

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    const/16 v1, 0x3b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    const/16 v1, 0x7b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    const/16 v1, 0x43

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    const/16 v1, 0x5d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    const/16 v1, 0x42

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    const/16 v1, 0x70

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    const/16 v1, 0x3d

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    return-void
.end method
