.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private flags:I

.field private prefixLength:I

.field private scope:I

.field private valid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 179
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "scope"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 193
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "scope"    # I
    .param p4, "valid"    # J

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 209
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    .line 210
    iput-wide p4, p0, Landroid/net/LinkAddress;->valid:J

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    .line 157
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InterfaceAddress;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 169
    return-void
.end method

.method private init(Ljava/net/InetAddress;III)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 120
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-le p2, v0, :cond_2

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad LinkAddress params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 129
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 130
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    .line 131
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    .line 132
    return-void
.end method

.method private isIPv6ULA()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 111
    .local v0, "bytes":[B
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, -0x4

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 113
    .end local v0    # "bytes":[B
    :cond_0
    return v1
.end method

.method static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    .line 99
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    goto :goto_0

    .line 95
    :cond_2
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    goto :goto_0

    .line 99
    :cond_3
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 234
    instance-of v2, p1, Landroid/net/LinkAddress;

    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 237
    check-cast v0, Landroid/net/LinkAddress;

    .line 238
    .local v0, "linkAddress":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    iget v3, v0, Landroid/net/LinkAddress;->flags:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    iget v3, v0, Landroid/net/LinkAddress;->scope:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    return v0
.end method

.method public getNetworkPrefixLength()I
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public getScope()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    return v0
.end method

.method public getValid()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Landroid/net/LinkAddress;->valid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/LinkAddress;->flags:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    return v0
.end method

.method public isGlobalPreferred()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 323
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    sget v1, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/net/LinkAddress;->isIPv6ULA()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "other"    # Landroid/net/LinkAddress;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v1, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 340
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 341
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return-void
.end method
