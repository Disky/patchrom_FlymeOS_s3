.class Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/extrasettings/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/android/extrasettings/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/extrasettings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    .line 69
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 74
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/android/extrasettings/location/RecentLocationApps;

    # getter for: Lcom/android/extrasettings/location/RecentLocationApps;->mActivity:Lcom/android/extrasettings/SettingsActivity;
    invoke-static {v0}, Lcom/android/extrasettings/location/RecentLocationApps;->access$000(Lcom/android/extrasettings/location/RecentLocationApps;)Lcom/android/extrasettings/SettingsActivity;

    move-result-object v0

    const-class v1, Lcom/android/extrasettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090589

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/extrasettings/location/RecentLocationApps$PackageEntryClickedListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
