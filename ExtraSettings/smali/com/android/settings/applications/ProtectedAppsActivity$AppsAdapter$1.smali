.class Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter$1;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter$1;->this$1:Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v2, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 386
    .local v0, "cName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter$1;->this$1:Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;

    iget-object v2, v2, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    invoke-virtual {v2, v1}, Lcom/android/extrasettings/applications/ProtectedAppsActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method
