.class final Lcom/mediatek/internal/telephony/PcscfAddr$1;
.super Ljava/lang/Object;
.source "PcscfAddr.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PcscfAddr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/internal/telephony/PcscfAddr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PcscfAddr;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 68
    new-instance v0, Lcom/mediatek/internal/telephony/PcscfAddr;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/PcscfAddr;-><init>()V

    .line 69
    .local v0, "pcscfAddr":Lcom/mediatek/internal/telephony/PcscfAddr;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr;->readFrom(Landroid/os/Parcel;)V

    .line 70
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/PcscfAddr;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/PcscfAddr;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcom/mediatek/internal/telephony/PcscfAddr;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/PcscfAddr$1;->newArray(I)[Lcom/mediatek/internal/telephony/PcscfAddr;

    move-result-object v0

    return-object v0
.end method
