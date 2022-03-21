.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;,
        Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;
    }
.end annotation


# instance fields
.field private mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field private mHomepageView:Landroid/view/View;

.field private mIsEmbeddingActivityEnabled:Z

.field private mIsTwoPaneLastTime:Z

.field private mLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

.field private mSuggestionView:Landroid/view/View;

.field private mTwoPaneSuggestionView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$7usTTgvARgq5zXuWadMgOyKxK98(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showSuggestionFragment$4(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MEGeGsSD_sxi4qrgMMZB8jR8G7w()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    invoke-static {}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$U9glgHyHrcg28hf6gRURK1CuTvI(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oRTT8K78EYijKVZ60SM__A9vnvU(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showSuggestionFragment$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$zLq73akZQSlWFiCBYeGZ-EdnfMs(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getHighlightMenuKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7f040d0a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSearchBoxHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0310

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private initAvatarView()V
    .locals 5

    const v0, 0x7f0d0034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d0035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->isAvatarSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initHomepageContainer()V
    .locals 1

    const v0, 0x7f0d02a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private initSearchBarView()V
    .locals 3

    const v0, 0x7f0d04c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    const/16 v2, 0x5de

    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d04c8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 3

    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;->onHomepageLoaded()V

    return-void
.end method

.method private synthetic lambda$showSuggestionFragment$3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showHomepageWithSuggestion(Z)V

    return-void
.end method

.method private static synthetic lambda$showSuggestionFragment$4(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SettingsHomepageActivity"

    const-string v1, "Cannot show fragment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private launchDeepLinkIntentToRight()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    instance-of v1, p0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    const-string v2, "SettingsHomepageActivity"

    if-nez v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/homepage/SliceDeepLinkHomepageActivity;

    if-nez v1, :cond_2

    const-string v0, "Not a deep link component"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "No EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI to deep link"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid target for the deep link intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v5, -0x10000001

    and-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v2, "is_from_settings_homepage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "is_from_slice"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "settings_large_screen_deep_link_intent_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    move-object v7, v4

    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v6, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse deep link intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method private reloadHighlightMenuKey()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->reloadHighlightMenuKey()V

    return-void
.end method

.method private showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder<",
            "TT;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;->build()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p0
.end method

.method private showSuggestionFragment(Z)V
    .locals 6

    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0d0589

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const v2, 0x7f0d05f2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    const v3, 0x7f0d04e9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;I)Landroidx/fragment/app/Fragment;

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;I)Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method private updateHomepageAppBar()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isTwoPaneResolution(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f0d02a6

    const/4 v3, 0x0

    const v4, 0x7f0d02a5

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHomepageBackground()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isTwoPaneResolution(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x112002d

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x1010031

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    :goto_0
    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const v0, 0x7f0d04e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public addHomepageLoadedListener(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method public getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isTwoPaneResolution(Landroid/app/Activity;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPaneLastTime:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPaneLastTime:Z

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060206

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isTwoPaneResolution(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPaneLastTime:Z

    const p1, 0x7f0d0091

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSearchBoxHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initHomepageContainer()V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSearchBarView()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p1, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p1, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object p1

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initAvatarView()V

    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040d0a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment(Z)V

    const-string/jumbo v0, "settings_contextual_home"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;

    const v1, 0x7f0d0180

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;I)Landroidx/fragment/app/Fragment;

    :cond_1
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const p1, 0x7f0d0348

    invoke-direct {p0, v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentBuilder;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homepage/TopLevelSettings;

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->reloadHighlightMenuKey()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsApplication;->setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method public showHomepageWithSuggestion(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showHomepageWithSuggestion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsHomepageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    sget-object v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;

    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
