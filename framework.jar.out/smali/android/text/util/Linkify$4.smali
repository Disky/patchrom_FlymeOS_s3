.class final Landroid/text/util/Linkify$4;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I
    .locals 4
    .param p1, "a"    # Landroid/text/util/LinkSpec;
    .param p2, "b"    # Landroid/text/util/LinkSpec;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 561
    iget v2, p1, Landroid/text/util/LinkSpec;->start:I

    iget v3, p2, Landroid/text/util/LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 565
    :cond_1
    iget v2, p1, Landroid/text/util/LinkSpec;->start:I

    iget v3, p2, Landroid/text/util/LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 566
    goto :goto_0

    .line 569
    :cond_2
    iget v2, p1, Landroid/text/util/LinkSpec;->end:I

    iget v3, p2, Landroid/text/util/LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 570
    goto :goto_0

    .line 573
    :cond_3
    iget v1, p1, Landroid/text/util/LinkSpec;->end:I

    iget v2, p2, Landroid/text/util/LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 577
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 559
    check-cast p1, Landroid/text/util/LinkSpec;

    check-cast p2, Landroid/text/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroid/text/util/Linkify$4;->compare(Landroid/text/util/LinkSpec;Landroid/text/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method
