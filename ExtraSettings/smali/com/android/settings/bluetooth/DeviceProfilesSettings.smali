.class public final Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/extrasettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;
    .param p1, "x1"    # Landroid/preference/CheckBoxPreference;
    .param p2, "x2"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 10

    .prologue
    .line 156
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 157
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .line 158
    .local v7, "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v7}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    .line 159
    .local v6, "pref":Landroid/preference/Preference;
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 162
    .end local v6    # "pref":Landroid/preference/Preference;
    .end local v7    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v4

    .line 164
    .local v4, "pbapPermission":I
    if-eqz v4, :cond_1

    .line 165
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    move-result-object v8

    .line 166
    .local v8, "psp":Lcom/android/extrasettings/bluetooth/PbapServerProfile;
    invoke-direct {p0, v8}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    .line 167
    .local v5, "pbapPref":Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    .end local v5    # "pbapPref":Landroid/preference/CheckBoxPreference;
    .end local v8    # "psp":Lcom/android/extrasettings/bluetooth/PbapServerProfile;
    :cond_1
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/extrasettings/bluetooth/MapProfile;

    move-result-object v3

    .line 171
    .local v3, "mapProfile":Lcom/android/extrasettings/bluetooth/MapProfile;
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    .line 172
    .local v1, "mapPermission":I
    if-eqz v1, :cond_2

    .line 173
    invoke-direct {p0, v3}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 174
    .local v2, "mapPreference":Landroid/preference/CheckBoxPreference;
    iget-object v9, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    .end local v2    # "mapPreference":Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 178
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 275
    .local v0, "device":Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    const v6, 0x7f0901d4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    :cond_0
    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "profileName":Ljava/lang/String;
    const v6, 0x7f0901c8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f0901c9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 300
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/extrasettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 302
    return-void
.end method

.method private createProfilePreference(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 3
    .param p1, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 200
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 201
    .local v1, "pref":Landroid/preference/CheckBoxPreference;
    const v2, 0x7f0400a4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 204
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 205
    invoke-interface {p1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 206
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 209
    .local v0, "iconResource":I
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 215
    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 370
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v2

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .param p1, "profIndex"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 9
    .param p1, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .param p2, "profilePref"    # Landroid/preference/CheckBoxPreference;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 233
    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 235
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PBAP Server"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 239
    .local v2, "newPermission":I
    :goto_0
    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 240
    if-ne v2, v4, :cond_1

    :goto_1
    invoke-virtual {p2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    .end local v2    # "newPermission":I
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 236
    goto :goto_0

    .restart local v2    # "newPermission":I
    :cond_1
    move v4, v5

    .line 240
    goto :goto_1

    .line 244
    .end local v2    # "newPermission":I
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 245
    .local v3, "status":I
    if-ne v3, v2, :cond_4

    move v1, v4

    .line 247
    .local v1, "isConnected":Z
    :goto_3
    const-string v6, "DeviceProfilesSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-nez v1, :cond_3

    instance-of v6, p1, Lcom/android/extrasettings/bluetooth/MapProfile;

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_2

    .end local v1    # "isConnected":Z
    :cond_4
    move v1, v5

    .line 245
    goto :goto_3

    .line 253
    .restart local v1    # "isConnected":Z
    :cond_5
    instance-of v6, p1, Lcom/android/extrasettings/bluetooth/MapProfile;

    if-eqz v6, :cond_6

    .line 254
    iget-object v6, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6, v4}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 255
    invoke-direct {p0, p2, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    .line 257
    :cond_6
    const-string v6, "DeviceProfilesSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isPreferred() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-interface {p1, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 260
    invoke-interface {p1, v0, v5}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 261
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setPreferred false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, p2, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    goto/16 :goto_2

    .line 264
    :cond_7
    invoke-interface {p1, v0, v4}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 265
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setPreferred true and connect profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v4, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    goto/16 :goto_2
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 312
    const-string v2, "DeviceProfilesSettings"

    const-string v3, "getView() is null, just skip"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 316
    .local v0, "deviceNameField":Landroid/widget/EditText;
    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    goto :goto_0
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V
    .locals 6
    .param p1, "profilePref"    # Landroid/preference/CheckBoxPreference;
    .param p2, "profile"    # Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 350
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 353
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v1, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBusy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 356
    instance-of v1, p2, Lcom/android/extrasettings/bluetooth/MapProfile;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 354
    goto :goto_0

    :cond_1
    move v2, v3

    .line 357
    goto :goto_1

    .line 359
    :cond_2
    instance-of v1, p2, Lcom/android/extrasettings/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_4

    .line 361
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    .line 364
    :cond_4
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPreferred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-interface {p2, v0}, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 328
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .line 329
    .local v1, "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 330
    .local v2, "profilePref":Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 331
    invoke-direct {p0, v1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 334
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 337
    .end local v1    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    .line 338
    .restart local v1    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 339
    .local v2, "profilePref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 340
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v3, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 345
    .end local v1    # "profile":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    .end local v2    # "profilePref":Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 346
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 182
    .local v0, "numProfiles":I
    iget-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 86
    const-string v1, "profile_container"

    invoke-virtual {p0, v1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 87
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    const v2, 0x7f04001f

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    .line 90
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 92
    .local v0, "deviceManager":Lcom/android/extrasettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothProfileManager;

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 106
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 307
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onPause()V

    .line 133
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 137
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onPause, unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x1

    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v1

    .line 221
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 223
    .local v0, "prof":Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-direct {p0, v0, p1}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/extrasettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onResume()V

    .line 116
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/extrasettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 121
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onResume, registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refresh()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public setDevice(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    .line 145
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "setDevice, registerCallback & refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/extrasettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 150
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 151
    invoke-direct {p0}, Lcom/android/extrasettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 153
    :cond_0
    return-void
.end method
