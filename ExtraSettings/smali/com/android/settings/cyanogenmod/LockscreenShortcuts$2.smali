.class Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$2;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;

    iget-object v1, p0, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$ActionHolder;
    invoke-static {v1}, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;->access$100(Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;)Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;->access$200(Lcom/android/extrasettings/cyanogenmod/LockscreenShortcuts;Ljava/lang/String;)V

    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    return-void
.end method
