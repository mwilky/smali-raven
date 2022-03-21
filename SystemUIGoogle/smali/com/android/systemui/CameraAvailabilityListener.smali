.class public final Lcom/android/systemui/CameraAvailabilityListener;
.super Ljava/lang/Object;
.source "CameraAvailabilityListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;,
        Lcom/android/systemui/CameraAvailabilityListener$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraAvailabilityListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraAvailabilityListener.kt\ncom/android/systemui/CameraAvailabilityListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1819#2,2:148\n1819#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 CameraAvailabilityListener.kt\ncom/android/systemui/CameraAvailabilityListener\n*L\n106#1,2:148\n110#1,2:150\n*E\n"
.end annotation


# static fields
.field public static final Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;


# instance fields
.field private final availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cutoutBounds:Landroid/graphics/Rect;

.field private final cutoutProtectionPath:Landroid/graphics/Path;

.field private final excludedPackageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final targetCameraId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/CameraAvailabilityListener$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/graphics/Path;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 6

    const-string v0, "cameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cutoutProtectionPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetCameraId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "excludedPackages"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutProtectionPath:Landroid/graphics/Path;

    iput-object p3, p0, Lcom/android/systemui/CameraAvailabilityListener;->targetCameraId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/CameraAvailabilityListener;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p3

    iget p5, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {p2, p3, p5, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getTargetCameraId$p(Lcom/android/systemui/CameraAvailabilityListener;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->targetCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isExcluded(Lcom/android/systemui/CameraAvailabilityListener;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/CameraAvailabilityListener;->isExcluded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyCameraActive(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/CameraAvailabilityListener;->notifyCameraActive()V

    return-void
.end method

.method public static final synthetic access$notifyCameraInactive(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/CameraAvailabilityListener;->notifyCameraInactive()V

    return-void
.end method

.method private final isExcluded(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final notifyCameraActive()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    iget-object v2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutProtectionPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyCameraInactive()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    invoke-interface {v0}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onHideCameraProtection()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final registerCameraListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->availabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method


# virtual methods
.method public final addTransitionCallback(Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final startListening()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/CameraAvailabilityListener;->registerCameraListener()V

    return-void
.end method
