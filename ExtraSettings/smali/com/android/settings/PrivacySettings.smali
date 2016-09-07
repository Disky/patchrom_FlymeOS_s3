.class public Lcom/android/extrasettings/PrivacySettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/extrasettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mEnabled:Z

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/android/extrasettings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/extrasettings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/extrasettings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/extrasettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 164
    new-instance v0, Lcom/android/extrasettings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/PrivacySettings$1;-><init>(Lcom/android/extrasettings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/PrivacySettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/extrasettings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/PrivacySettings;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/extrasettings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/PrivacySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/PrivacySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/extrasettings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/extrasettings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/PrivacySettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/extrasettings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/PrivacySettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/extrasettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v3, "nonVisibleKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 353
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 355
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 360
    :goto_0
    if-eqz v2, :cond_2

    .line 361
    const-string v4, "backup_inactive"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :goto_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    const-string v4, "personal_data_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 374
    const-string v4, "backup_category"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_1
    return-object v3

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "auto_restore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v4, "configure_account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v4, "backup_data"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 301
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 302
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 294
    goto :goto_1

    :cond_2
    move v2, v3

    .line 295
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0907f8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 194
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/extrasettings/PrivacySettings;->mDialogType:I

    .line 195
    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090803

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090802

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 202
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "summary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/extrasettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "transport":Ljava/lang/String;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 210
    .local v6, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 211
    .local v0, "backupEnabled":Z
    const/4 v2, 0x0

    .line 212
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 214
    .local v3, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 215
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "transport":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 217
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 222
    .end local v7    # "transport":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 224
    if-eqz v0, :cond_0

    .line 226
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 228
    .local v1, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v1, :cond_0

    .line 230
    const/4 v8, 0x1

    :try_start_1
    invoke-interface {v1, v8}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v1    # "bm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v8, "backup_auto_restore"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 239
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 241
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v4, v9

    .line 242
    .local v4, "configureEnabled":Z
    :goto_3
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 243
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 244
    invoke-direct {p0, v3}, Lcom/android/extrasettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 245
    return-void

    .line 218
    .end local v4    # "configureEnabled":Z
    :catch_0
    move-exception v5

    .line 220
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 231
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bm":Landroid/app/backup/IBackupManager;
    :catch_1
    move-exception v5

    .line 232
    .restart local v5    # "e":Landroid/os/RemoteException;
    const-string v8, "PrivacySettings"

    const-string v11, "set backup provisioned false!"

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "bm":Landroid/app/backup/IBackupManager;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_1
    move v8, v10

    .line 237
    goto :goto_2

    :cond_2
    move v4, v10

    .line 241
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 306
    const v0, 0x7f090add

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/android/extrasettings/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 272
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 273
    invoke-direct {p0, v2}, Lcom/android/extrasettings/PrivacySettings;->setBackupEnabled(Z)V

    .line 278
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/extrasettings/PrivacySettings;->updateConfigureSummary()V

    .line 280
    :cond_1
    iput v2, p0, Lcom/android/extrasettings/PrivacySettings;->mDialogType:I

    .line 281
    return-void

    .line 274
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/extrasettings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->isOwner()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/extrasettings/PrivacySettings;->mEnabled:Z

    .line 93
    iget-boolean v8, p0, Lcom/android/extrasettings/PrivacySettings;->mEnabled:Z

    if-nez v8, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const v8, 0x7f060032

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 99
    .local v6, "screen":Landroid/preference/PreferenceScreen;
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 102
    const-string v8, "backup_data"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    .line 103
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/extrasettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    const-string v8, "auto_restore"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 106
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/extrasettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v8, "configure_account"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 110
    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v8

    iput-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 111
    iget-object v8, p0, Lcom/android/extrasettings/PrivacySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setFactoryResetTitle(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/extrasettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/extrasettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    .line 116
    .local v7, "screenPreferenceCount":I
    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 117
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 118
    .local v5, "preference":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 122
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_3
    const-string v8, "backup_category"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 123
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_5

    .line 124
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 125
    .local v1, "backupCategoryPreferenceCount":I
    add-int/lit8 v2, v1, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 126
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 127
    .restart local v5    # "preference":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 128
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 132
    .end local v1    # "backupCategoryPreferenceCount":I
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_5
    invoke-direct {p0}, Lcom/android/extrasettings/PrivacySettings;->updateToggles()V

    .line 134
    sget-boolean v8, Lcom/mediatek/settings/FeatureOption;->MTK_DRM_APP:Z

    if-nez v8, :cond_0

    .line 135
    const-string v8, "personal_data_category"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 137
    .local v4, "perDataCategory":Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_0

    .line 138
    const-string v8, "drm_settings"

    invoke-virtual {p0, v8}, Lcom/android/extrasettings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 149
    iget-boolean v0, p0, Lcom/android/extrasettings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/extrasettings/PrivacySettings;->updateToggles()V

    .line 152
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/extrasettings/PrivacySettings;->mDialogType:I

    .line 161
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onStop()V

    .line 162
    return-void
.end method
