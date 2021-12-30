.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;
.super Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;
.source "ColumbusGestureTrainingEnrollingActivity.java"


# instance fields
.field private mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mFirstGestureDetected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIllustration:Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;

.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method public static synthetic $r8$lambda$0XxQd0fxxldymFZ0QytzRzreMOU(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->lambda$onTrigger$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$OZeIFe_zruAqGR-7fRYBgmym9yg(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wMv4T_vuIw5VLGnRtczeAU1NwzI(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->lambda$onTrigger$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xDiRgDQzZmr2ffwdqu6lIRJNDxs(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zC7q0_tX1g852unLHD800icuCVY(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->lambda$onTrigger$2()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onTrigger$0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onTrigger$1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f0405e5

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f0405e4

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f041775

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const v2, 0x7f13021a

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mIllustration:Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->setGestureCount(ILjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestAccessibilityFocus()Z

    return-void
.end method

.method private synthetic lambda$onTrigger$2()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f0405e2

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f0405e1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mIllustration:Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->setGestureCount(ILjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestAccessibilityFocus()Z

    return-void
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->startActionActivity()V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private startActionActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingActionActivity;

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

    const/16 p0, 0x6d5

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
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0318

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0d0086

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0d0167

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mIllustration:Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;

    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f0405e6

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0405da

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v0, 0x7f13021b

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method public onTrigger()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGestureDetected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mFirstGestureDetected:Z

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureTrainingEnrollingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
