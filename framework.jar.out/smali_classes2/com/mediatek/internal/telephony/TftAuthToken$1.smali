.class final Lcom/mediatek/internal/telephony/TftAuthToken$1;
.super Ljava/lang/Object;
.source "TftAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/TftAuthToken;
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
        "Lcom/mediatek/internal/telephony/TftAuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/TftAuthToken;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Lcom/mediatek/internal/telephony/TftAuthToken;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/TftAuthToken;-><init>()V

    .line 79
    .local v0, "tftAuthToken":Lcom/mediatek/internal/telephony/TftAuthToken;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/TftAuthToken;->readFrom(Landroid/os/Parcel;)V

    .line 80
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/TftAuthToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/TftAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/TftAuthToken;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Lcom/mediatek/internal/telephony/TftAuthToken;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/TftAuthToken$1;->newArray(I)[Lcom/mediatek/internal/telephony/TftAuthToken;

    move-result-object v0

    return-object v0
.end method
