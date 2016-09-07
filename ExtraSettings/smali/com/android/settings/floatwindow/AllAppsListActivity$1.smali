.class Lcom/android/extrasettings/floatwindow/AllAppsListActivity$1;
.super Ljava/lang/Object;
.source "AllAppsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/floatwindow/AllAppsListActivity;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/floatwindow/AllAppsListActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity$1;->this$0:Lcom/android/extrasettings/floatwindow/AllAppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 58
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/extrasettings/floatwindow/AllAppsListActivity$1;->this$0:Lcom/android/extrasettings/floatwindow/AllAppsListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/extrasettings/floatwindow/AllAppsListActivity;->access$000(Lcom/android/extrasettings/floatwindow/AllAppsListActivity;Ljava/lang/String;)V

    .line 48
    return-void
.end method
