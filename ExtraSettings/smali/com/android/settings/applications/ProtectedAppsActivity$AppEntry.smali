.class final Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppEntry"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;->this$0:Lcom/android/extrasettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 246
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 247
    # getter for: Lcom/android/extrasettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/extrasettings/applications/ProtectedAppsActivity;->access$200(Lcom/android/extrasettings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/applications/ProtectedAppsActivity$AppEntry;->title:Ljava/lang/String;

    .line 248
    return-void
.end method