.class public Lcom/android/extrasettings/ThemesSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "ThemesSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/extrasettings/ThemesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    .local v2, "resolver":Landroid/content/ContentResolver;
    const v3, 0x7f06004d

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/ThemesSettings;->addPreferencesFromResource(I)V

    .line 102
    const-string v3, "toggle_layers_reset"

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/ThemesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 103
    .local v1, "myPref":Landroid/preference/Preference;
    new-instance v3, Lcom/android/extrasettings/ThemesSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/extrasettings/ThemesSettings$1;-><init>(Lcom/android/extrasettings/ThemesSettings;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    return-void
.end method
