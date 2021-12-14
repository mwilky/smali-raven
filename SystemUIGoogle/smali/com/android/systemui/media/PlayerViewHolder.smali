.class public final Lcom/android/systemui/media/PlayerViewHolder;
.super Ljava/lang/Object;
.source "PlayerViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/PlayerViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

.field private static final controlsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final gutsIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action0:Landroid/widget/ImageButton;

.field private final action1:Landroid/widget/ImageButton;

.field private final action2:Landroid/widget/ImageButton;

.field private final action3:Landroid/widget/ImageButton;

.field private final action4:Landroid/widget/ImageButton;

.field private final albumView:Landroid/widget/ImageView;

.field private final appIcon:Landroid/widget/ImageView;

.field private final artistText:Landroid/widget/TextView;

.field private final cancel:Landroid/view/View;

.field private final dismiss:Landroid/view/ViewGroup;

.field private final dismissLabel:Landroid/view/View;

.field private final elapsedTimeView:Landroid/widget/TextView;

.field private final longPressText:Landroid/widget/TextView;

.field private final player:Lcom/android/systemui/util/animation/TransitionLayout;

.field private final progressTimes:Landroid/view/ViewGroup;

.field private final seamless:Landroid/view/ViewGroup;

.field private final seamlessIcon:Landroid/widget/ImageView;

.field private final seamlessText:Landroid/widget/TextView;

.field private final seekBar:Landroid/widget/SeekBar;

.field private final settings:Landroid/view/View;

.field private final settingsText:Landroid/widget/TextView;

.field private final titleText:Landroid/widget/TextView;

.field private final totalTimeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/media/PlayerViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/PlayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Integer;

    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget v2, Lcom/android/systemui/R$id;->app_name:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    sget v2, Lcom/android/systemui/R$id;->album_art:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sget v2, Lcom/android/systemui/R$id;->header_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    sget v2, Lcom/android/systemui/R$id;->header_artist:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v0, v7

    sget v2, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->notification_media_progress_time:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->media_progress_bar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->action0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->action1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->action2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->action3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v0, v8

    sget v2, Lcom/android/systemui/R$id;->action4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v0, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->controlsIds:Ljava/util/Set;

    new-array v0, v7, [Ljava/lang/Integer;

    sget v1, Lcom/android/systemui/R$id;->remove_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/PlayerViewHolder;->gutsIds:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    iput-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->album_art:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->header_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->header_artist:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->media_seamless_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->media_seamless_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->media_progress_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/android/systemui/R$id;->notification_media_progress_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->media_elapsed_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->media_total_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->action0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$id;->action1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$id;->action2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$id;->action3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$id;->action4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$id;->remove_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->longPressText:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->cancel:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismiss:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismissLabel:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/PlayerViewHolder;->settings:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->settings_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/media/PlayerViewHolder;->settingsText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.systemui.media.IlluminationDrawable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/media/IlluminationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "seamless"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction0()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction1()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction2()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction3()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getAction4()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "action4"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object v0

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p0

    const-string v0, "settings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/IlluminationDrawable;->registerLightSource(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/PlayerViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getControlsIds$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->controlsIds:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getGutsIds$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->gutsIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getAction(I)Landroid/widget/ImageButton;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->action0:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    const-string p1, "action0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->action1:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    const-string p1, "action1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$id;->action2:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    const-string p1, "action2"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$id;->action3:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    const-string p1, "action3"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/R$id;->action4:I

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    const-string p1, "action4"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final getAction0()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action0:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction1()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action1:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction2()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action2:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction3()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action3:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAction4()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->action4:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public final getAlbumView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->albumView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getAppIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->appIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getArtistText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->artistText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getCancel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->cancel:Landroid/view/View;

    return-object p0
.end method

.method public final getDismiss()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismiss:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getDismissLabel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->dismissLabel:Landroid/view/View;

    return-object p0
.end method

.method public final getElapsedTimeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getLongPressText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->longPressText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method public final getProgressTimes()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->progressTimes:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamless()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamless:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getSeamlessIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getSeamlessText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seamlessText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public final getSettings()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->settings:Landroid/view/View;

    return-object p0
.end method

.method public final getSettingsText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->settingsText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitleText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTotalTimeView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/PlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final marquee(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/PlayerViewHolder;->longPressText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/PlayerViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/PlayerViewHolder;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
