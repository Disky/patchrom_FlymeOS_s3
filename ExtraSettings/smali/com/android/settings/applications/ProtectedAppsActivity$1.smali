.class Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/extrasettings/applications/ProtectedAppsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/extrasettings/applications/ProtectedAppsActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    # invokes: Lcom/android/extrasettings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ProtectedAppsActivity;->access$100(Lcom/android/extrasettings/applications/ProtectedAppsActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;>;"
    iget-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/extrasettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ProtectedAppsActivity;->access$000(Lcom/android/extrasettings/applications/ProtectedAppsActivity;)Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;->clear()V

    .line 103
    iget-object v0, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/extrasettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/extrasettings/applications/ProtectedAppsActivity;->access$000(Lcom/android/extrasettings/applications/ProtectedAppsActivity;)Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 104
    return-void
.end method
