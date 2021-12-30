.class public Lcom/google/android/setupcompat/template/StatusBarMixin;
.super Ljava/lang/Object;
.source "StatusBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final decorView:Landroid/view/View;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private final partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

.field private statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    sget v0, Lcom/google/android/setupcompat/R$id;->suc_layout_status:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "sucLayoutStatus cannot be null in StatusBarMixin"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->linearLayout:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->decorView:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/google/android/setupcompat/R$styleable;->SucStatusBarMixin:[I

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucStatusBarMixin_sucLightStatusBar:I

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/StatusBarMixin;->isLightStatusBar()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setLightStatusBar(Z)V

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucStatusBarMixin_sucStatusBarBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public isLightStatusBar()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->decorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setLightStatusBar(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_STATUS_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->decorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->decorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_STATUS_BAR_BACKGROUND:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
