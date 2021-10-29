.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Landroid/os/Handler;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->slideIn()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_stashed_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_stashed_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
