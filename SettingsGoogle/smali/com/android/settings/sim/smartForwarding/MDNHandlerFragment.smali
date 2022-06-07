.class public Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;
.super Landroidx/fragment/app/Fragment;
.source "MDNHandlerFragment.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# direct methods
.method public static synthetic $r8$lambda$XFNBdiL_Uh7YGu4BQG_HqSD1cB0(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_tDqBq2JqxIzPMl6vP_oBMDhotk(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFkuNSYq9HBR5wJqV6_YT-316tU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->lambda$pressButtonOnClick$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->pressButtonOnClick()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->switchToMainFragment(Z)V

    return-void
.end method

.method private static synthetic lambda$pressButtonOnClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private pressButtonOnClick()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/smartForwarding/MDNHandlerHeaderFragment;

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string/jumbo v1, "slot0_phone_number"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slot1_phone_number"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    aget-object v0, v2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, v2, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;->switchToMainFragment(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->enableSmartForwarding([Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f04129a

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f04129e

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f04129d

    sget-object v1, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void
.end method

.method private switchToMainFragment(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;-><init>(Z)V

    const p1, 0x7f0d0179

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f1500e0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f04129c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0d0466

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0d0137

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/sim/smartForwarding/MDNHandlerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
