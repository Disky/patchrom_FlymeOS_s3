.class Lcom/android/extrasettings/accounts/AccountSettings$ProfileData;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/extrasettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# instance fields
.field public addAccountPreference:Landroid/preference/Preference;

.field public authenticatorHelper:Lcom/android/extrasettings/accounts/AuthenticatorHelper;

.field public preferenceGroup:Landroid/preference/PreferenceGroup;

.field public removeWorkProfilePreference:Landroid/preference/Preference;

.field public userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/extrasettings/accounts/AccountSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/extrasettings/accounts/AccountSettings$1;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/extrasettings/accounts/AccountSettings$ProfileData;-><init>()V

    return-void
.end method