.class public Lcom/android/extrasettings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/extrasettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field private static final MENU_HELP:I = 0x65

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 76
    new-instance v0, Lcom/android/extrasettings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/extrasettings/SettingsPreferenceFragment$1;-><init>(Lcom/android/extrasettings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 429
    return-void
.end method

.method static synthetic access$200(Lcom/android/extrasettings/SettingsPreferenceFragment;)Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/extrasettings/SettingsPreferenceFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/extrasettings/SettingsPreferenceFragment;Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .param p0, "x0"    # Lcom/android/extrasettings/SettingsPreferenceFragment;
    .param p1, "x1"    # Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 204
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 209
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 211
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 260
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 263
    check-cast v3, Landroid/preference/Preference;

    .line 264
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    .end local v1    # "item":Ljava/lang/Object;
    .end local v2    # "n":I
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :goto_1
    return v2

    .line 260
    .restart local v1    # "item":Ljava/lang/Object;
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 221
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    .line 222
    .local v3, "position":I
    if-ltz v3, :cond_0

    .line 223
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 226
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v4, v0

    .line 228
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 231
    const-string v4, "SettingsPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "highlightPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v4, Lcom/android/extrasettings/SettingsPreferenceFragment$2;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/extrasettings/SettingsPreferenceFragment$2;-><init>(Lcom/android/extrasettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 256
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPinnedHeaderView()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 541
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 302
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/extrasettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/extrasettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/extrasettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public isDialogShowing(I)Z
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 385
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 100
    .local v0, "helpResource":I
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 103
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    const/16 v1, 0x65

    const v2, 0x7f090982

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 292
    .local v0, "helpItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/extrasettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 294
    .end local v0    # "helpItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f1000f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 110
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 339
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 340
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 144
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 147
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 163
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 164
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 157
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 172
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 175
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 371
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 275
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->setCancelable(Z)V

    .line 401
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    # setter for: Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 412
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    # setter for: Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 423
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 355
    :cond_1
    new-instance v0, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/extrasettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 356
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/extrasettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 545
    invoke-virtual {p0}, Lcom/android/extrasettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 546
    .local v7, "activity":Landroid/app/Activity;
    instance-of v1, v7, Lcom/android/extrasettings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v0, v7

    .line 547
    check-cast v0, Lcom/android/extrasettings/SettingsActivity;

    .local v0, "sa":Lcom/android/extrasettings/SettingsActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 548
    invoke-virtual/range {v0 .. v6}, Lcom/android/extrasettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 559
    .end local v0    # "sa":Lcom/android/extrasettings/SettingsActivity;
    :goto_0
    return v1

    .line 550
    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    move-object v0, v7

    .line 551
    check-cast v0, Landroid/preference/PreferenceActivity;

    .local v0, "sa":Landroid/preference/PreferenceActivity;
    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    .line 552
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v8

    .line 553
    goto :goto_0

    .line 555
    .end local v0    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterObserverIfNeeded()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/extrasettings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 185
    :cond_1
    return-void
.end method
