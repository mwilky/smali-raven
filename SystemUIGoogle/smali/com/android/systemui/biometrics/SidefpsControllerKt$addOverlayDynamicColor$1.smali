.class public final Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;
.super Ljava/lang/Object;
.source "SidefpsController.kt"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $this_addOverlayDynamicColor:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;->$this_addOverlayDynamicColor:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/biometrics/SidefpsControllerKt$addOverlayDynamicColor$1;->$this_addOverlayDynamicColor:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/SidefpsControllerKt;->addOverlayDynamicColor$update(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method
