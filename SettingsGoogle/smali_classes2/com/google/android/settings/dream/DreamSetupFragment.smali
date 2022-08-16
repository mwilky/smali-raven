.class public Lcom/google/android/settings/dream/DreamSetupFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSetupFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;
    }
.end annotation


# instance fields
.field private mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public static synthetic $r8$lambda$aPXBBUdhnwEMde6chIr6q4_urEU(Lcom/google/android/settings/dream/DreamSetupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupFragment;->onSecondaryButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cwgvPP32dhx7QfsizpD0Oc759qU(Lcom/google/android/settings/dream/DreamSetupFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupFragment;->onPrimaryButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTHbrf26HmtduiEky6afTRc5dLs(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupFragment;->lambda$onViewCreated$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m_jl0PHQhQGqg0Whtf1sfHCSuQ0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/dream/DreamSetupFragment;->lambda$onViewCreated$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDream(Lcom/google/android/settings/dream/DreamSetupFragment;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackend(Lcom/google/android/settings/dream/DreamSetupFragment;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveDream(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private canCustomizeDream()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onViewCreated$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method

.method private synthetic lambda$onViewCreated$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;
    .locals 2

    new-instance v0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;-><init>(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem-IA;)V

    return-object v0
.end method

.method private onPrimaryButtonClicked(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupFragment;->canCustomizeDream()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private onSecondaryButtonClicked(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/dream/DreamBackend;->setWhenToDream(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0600d8

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p2}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    new-instance v0, Lcom/android/settings/dream/DreamAdapter;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/dream/DreamSetupFragment;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const v1, 0x7f0600d4

    invoke-direct {v0, v1, p2}, Lcom/android/settings/dream/DreamAdapter;-><init>(ILjava/util/List;)V

    const p2, 0x7f0d0205

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/settings/dream/AutoFitGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/dream/AutoFitGridLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0d0533

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/dream/DreamSetupFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    const v0, 0x7f041898

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    const v0, 0x7f130283

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/dream/DreamSetupFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const p2, 0x7f0408a7

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 p2, 0x7

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const p2, 0x7f130284

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
