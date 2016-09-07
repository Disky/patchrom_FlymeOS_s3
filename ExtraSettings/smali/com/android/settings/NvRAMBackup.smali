.class public interface abstract Lcom/android/extrasettings/NvRAMBackup;
.super Ljava/lang/Object;
.source "NvRAMBackup.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/NvRAMBackup$Stub;
    }
.end annotation


# virtual methods
.method public abstract saveToBin()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
