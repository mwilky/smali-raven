.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/WindowContainer;->lambda$applyAnimationUnchecked$15(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
