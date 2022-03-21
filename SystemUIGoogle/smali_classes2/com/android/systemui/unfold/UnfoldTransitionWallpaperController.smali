.class public final Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;
.super Ljava/lang/Object;
.source "UnfoldTransitionWallpaperController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;
    }
.end annotation


# instance fields
.field private final unfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

.field private final wallpaperController:Lcom/android/systemui/util/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/util/WallpaperController;)V
    .locals 1

    const-string v0, "unfoldTransitionProgressProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpaperController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->unfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    return-void
.end method

.method public static final synthetic access$getWallpaperController$p(Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;)Lcom/android/systemui/util/WallpaperController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    return-object p0
.end method


# virtual methods
.method public final init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->unfoldTransitionProgressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
