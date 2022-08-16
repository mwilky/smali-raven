.class public final synthetic Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Lcom/android/systemui/media/MediaAction;

.field public final synthetic f$3:Lcom/android/systemui/media/AnimationBindHandler;

.field public final synthetic f$4:Lcom/android/systemui/media/MediaButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;Lcom/android/systemui/media/AnimationBindHandler;Lcom/android/systemui/media/MediaButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$1:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$2:Lcom/android/systemui/media/MediaAction;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$3:Lcom/android/systemui/media/AnimationBindHandler;

    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$4:Lcom/android/systemui/media/MediaButton;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$0:Lcom/android/systemui/media/MediaControlPanel;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$1:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$2:Lcom/android/systemui/media/MediaAction;

    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$3:Lcom/android/systemui/media/AnimationBindHandler;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda18;->f$4:Lcom/android/systemui/media/MediaButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/systemui/media/MediaAction;->rebindId:Ljava/lang/Integer;

    iget-object v6, v3, Lcom/android/systemui/media/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iput-object v5, v3, Lcom/android/systemui/media/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/media/AnimationBindHandler;->unregisterAll()V

    iget-object v4, v2, Lcom/android/systemui/media/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/Animatable2;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v4, v3}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    iget-object v5, v3, Lcom/android/systemui/media/AnimationBindHandler;->registrations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, v2, Lcom/android/systemui/media/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/Animatable2;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v4, v3}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    iget-object v3, v3, Lcom/android/systemui/media/AnimationBindHandler;->registrations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/MediaAction;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/media/AnimationBindHandler;->unregisterAll()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaControlPanel;->setSemanticButtonVisibleAndAlpha(ILcom/android/systemui/media/MediaAction;Lcom/android/systemui/media/MediaButton;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
