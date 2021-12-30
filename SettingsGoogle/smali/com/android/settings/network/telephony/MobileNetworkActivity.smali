.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"

# interfaces
.implements Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;


# static fields
.field static final MOBILE_SETTINGS_TAG:Ljava/lang/String; = "mobile_settings:"

.field static final SUB_ID_NULL:I = -0x80000000


# instance fields
.field private mCurSubscriptionId:I

.field private mPendingSubscriptionChange:Z

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$20iDSZn3Oag1wFfBYq1NwjswfUk(Lcom/android/settings/network/telephony/MobileNetworkActivity;Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$getSubscriptionOrDefault$2(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W7hwS8TCif1sko7YQFgu-zAvebY(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$getSubscription$3(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c9-lsJuzz83getpoqzH_sVqKmAk(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$onResume$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hrBUDyt4icxI44xikPpzBIIP4ks(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$onStart$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    return-void
.end method

.method private doesIntentContainOptInAction(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    return-object p0
.end method

.method private static synthetic lambda$getSubscription$3(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getSubscriptionOrDefault$2(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->defaultSubscriptionSelection(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onResume$1()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method private maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryVisible(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private removeContactDiscoveryDialog(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private validate(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.provider.extra.SUB_ID"

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Intent with action SHOW_CAPABILITY_DISCOVERY_OPT_IN must also include the extra Settings#EXTRA_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method buildFragmentTag(I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mobile_settings:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected defaultSubscriptionSelection(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;)",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda4;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    :goto_0
    return-object p0
.end method

.method getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object p0
.end method

.method protected getSubscription(ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/helper/SelectableSubscriptions;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNetworkActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getSubscriptionForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getSubscriptionOrDefault(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription(ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public onChanged()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription(ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId missing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileNetworkActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->tryToFinishActivity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    const-string v1, "android.provider.extra.SUB_ID"

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_3
    :goto_0
    iput v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->registerActiveSubscriptionsListener()V

    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscriptionOrDefault(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subId request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileNetworkActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->tryToFinishActivity()V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    if-eqz p1, :cond_0

    const/high16 v0, -0x80000000

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscriptionOrDefault(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid subId request "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    if-ne v2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->runSubscriptionUpdate(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->runSubscriptionUpdate(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method registerActiveSubscriptionsListener()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method protected runSubscriptionUpdate(Ljava/lang/Runnable;)V
    .locals 4

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription(ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->tryToFinishActivity()V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method switchFragment(Landroid/telephony/SubscriptionInfo;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.SUB_ID"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.settings.MMS_MESSAGE_SETTING"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":settings:fragment_args_key"

    const-string v4, "mms_message"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->buildFragmentTag(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Construct fragment: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileNetworkActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0d0175

    invoke-virtual {v1, v0, p1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected tryToFinishActivity()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroid/telephony/SubscriptionInfo;)V

    :cond_1
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    return-void
.end method
