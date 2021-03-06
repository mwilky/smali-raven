.class public final Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;
.super Ljava/lang/Object;
.source "AccessibilityGestureNavigationTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;,
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;,
        Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;
    }
.end annotation


# static fields
.field private static final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$f3VyksAhaOn4m_4xARPQYFf1Sk8(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->lambda$static$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sa_W-jaLCoow4DWafKTBE_CNvmY(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->lambda$createShortcutNavigationContentView$2(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ts5mc0mqcAGWz8peRBZU8GycbcE(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->lambda$createShortcutNavigationContentView$1(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static createAccessibilityTutorialDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createShortcutNavigationContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f04014a

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f04014a

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method private static createHardwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    const v0, 0x7f040157

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020166

    invoke-static {p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f040152

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-object v0
.end method

.method private static createShortcutNavigationContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 9

    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f06003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createShortcutTutorialPages(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v3, "Unexpected tutorial pages size"

    invoke-static {p1, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const p1, 0x7f0d02cd

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const p1, 0x7f0d05c1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextSwitcher;

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d02dc

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/TextSwitcher;

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getInstruction()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d0619

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;

    invoke-direct {v3, v8, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPagerAdapter;-><init>(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$1;)V

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v2, 0x7f040158

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;-><init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-object v0
.end method

.method static createShortcutTutorialPages(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createSoftwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createHardwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x4

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTripleTapTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private static createSoftwareImage(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200f2

    goto :goto_0

    :cond_0
    const v0, 0x7f0200f1

    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private static createSoftwareTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    const v0, 0x7f040153

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createSoftwareImage(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getSoftwareInstruction(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f020166

    invoke-static {p0, v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createTripleTapTutorialPage(Landroid/content/Context;)Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;
    .locals 4

    const v0, 0x7f040156

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f040151

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f020166

    invoke-static {p0, v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;-><init>(Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private static createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 7

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    const v3, 0x7f030029

    const v4, 0x7f03002a

    const v5, 0x7f0d0251

    const v6, 0x7f0d0253

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    const p1, 0x7f060285

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f04014f

    goto :goto_1

    :cond_2
    const p0, 0x7f04014e

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_3
    const p1, 0x7f060287

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/VideoPlayer;->create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f040150

    goto :goto_3

    :cond_5
    const p0, 0x7f04014d

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    const p0, 0x7f060286

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method private static getSoftwareInstruction(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04014c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f04014b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->getSoftwareInstructionWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getSoftwareInstructionWithIcon(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v1, p1, 0x2

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020165

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static synthetic lambda$createShortcutNavigationContentView$1(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->makeTitleView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createShortcutNavigationContentView$2(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->makeInstructionView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static makeInstructionView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f130005

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    return-object v0
.end method

.method private static makeTitleView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f13000a

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public static showGestureNavigationSettingsTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createTutorialDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f04014a

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static showGestureNavigationTutorialDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
