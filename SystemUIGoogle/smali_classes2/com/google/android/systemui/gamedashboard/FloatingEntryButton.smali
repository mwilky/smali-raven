.class public Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
.super Ljava/lang/Object;
.source "FloatingEntryButton.java"


# instance fields
.field private final mButtonHeight:I

.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mEntryPointButton:Landroid/widget/ImageView;

.field private mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private final mFloatingView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mMargin:I

.field private mVisibilityChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->game_dashboard_floating_entry_point:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/android/systemui/R$id;->game_dashboard_entry_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->game_dashboard_floating_entry_point_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    sget v0, Lcom/android/systemui/R$dimen;->game_dashboard_floating_entry_point_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mButtonHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method public hide()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    return-void
.end method

.method public setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show(Z)Z
    .locals 14

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    add-int/2addr v4, v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    if-nez p1, :cond_1

    add-int/2addr v5, v3

    :cond_1
    move v9, v5

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mButtonHeight:I

    add-int v8, v2, v4

    const/4 v10, 0x0

    const/16 v11, 0x7e8

    const/16 v12, 0x8

    const/4 v13, -0x3

    move-object v6, p1

    invoke-direct/range {v6 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "FloatingEntryButton"

    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const v1, 0x800035

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;-><init>(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method
