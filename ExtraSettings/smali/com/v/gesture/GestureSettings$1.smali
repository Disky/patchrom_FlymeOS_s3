.class Lcom/v/gesture/GestureSettings$1;
.super Ljava/lang/Object;
.source "GestureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v/gesture/GestureSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/v/gesture/GestureSettings;


# direct methods
.method constructor <init>(Lcom/v/gesture/GestureSettings;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/v/gesture/GestureSettings$1;->this$0:Lcom/v/gesture/GestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/v/gesture/GestureSettings$1;->this$0:Lcom/v/gesture/GestureSettings;

    # invokes: Lcom/v/gesture/GestureSettings;->showDialog()V
    invoke-static {v0}, Lcom/v/gesture/GestureSettings;->access$000(Lcom/v/gesture/GestureSettings;)V

    .line 141
    const/4 v0, 0x0

    return v0
.end method
