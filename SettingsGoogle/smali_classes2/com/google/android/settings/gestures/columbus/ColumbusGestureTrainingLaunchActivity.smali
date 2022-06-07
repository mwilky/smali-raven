.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingLaunchActivity.java"


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public static synthetic $r8$lambda$dqxI4a9awVjCLBR0-WN4ldOY9Q4(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQwV1pQBBGkk6Vz26UuDnL3Re1Y(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mkWDjjYREzoon-kZpN4-43SmDTs(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->lambda$onCreate$0(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButton;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButton;->getSecureValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const p1, 0x7f040605

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "columbus_launch_app"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "columbus_launch_app_shortcut"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->startFinishedActivity()V

    :goto_1
    return-void
.end method

.method private startFinishedActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingFinishedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launched_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6df

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00aa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const-class p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda2;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    const v4, 0x7f060084

    iget-object v5, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButton;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v5, v1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButton;->setSecureValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0324

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f040606

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04179d

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f13021c

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0405f2

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingLaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f13021d

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
