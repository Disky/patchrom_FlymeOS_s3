.class public abstract Lcom/android/extrasettings/NvRAMBackup$Stub;
.super Landroid/os/Binder;
.source "NvRAMBackup.java"

# interfaces
.implements Lcom/android/extrasettings/NvRAMBackup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/NvRAMBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/NvRAMBackup$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/extrasettings/NvRAMBackup;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    .line 17
    :cond_0
    const-string v1, "NvRAMBackup"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 18
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/extrasettings/NvRAMBackup;

    if-eqz v1, :cond_1

    .line 19
    check-cast v0, Lcom/android/extrasettings/NvRAMBackup;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lcom/android/extrasettings/NvRAMBackup$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/extrasettings/NvRAMBackup$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
