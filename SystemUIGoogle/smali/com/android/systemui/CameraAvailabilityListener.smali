.class public final Lcom/android/systemui/CameraAvailabilityListener;
.super Ljava/lang/Object;
.source "CameraAvailabilityListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraAvailabilityListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraAvailabilityListener.kt\ncom/android/systemui/CameraAvailabilityListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1849#2,2:148\n1849#2,2:150\n*S KotlinDebug\n*F\n+ 1 CameraAvailabilityListener.kt\ncom/android/systemui/CameraAvailabilityListener\n*L\n106#1:148,2\n110#1:150,2\n*E\n"
.end annotation


# instance fields
.field public final availabilityCallback:Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

.field public final cameraManager:Landroid/hardware/camera2/CameraManager;

.field public cutoutBounds:Landroid/graphics/Rect;

.field public final cutoutProtectionPath:Landroid/graphics/Path;

.field public final excludedPackageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final executor:Ljava/util/concurrent/Executor;

.field public final listeners:Ljava/util/ArrayList;

.field public final targetCameraId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/graphics/Path;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

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

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->availabilityCallback:Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3}, Landroidx/slice/view/R$dimen;->roundToInt(F)I

    move-result p3

    iget p5, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p5}, Landroidx/slice/view/R$dimen;->roundToInt(F)I

    move-result p5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Landroidx/slice/view/R$dimen;->roundToInt(F)I

    move-result v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Landroidx/slice/view/R$dimen;->roundToInt(F)I

    move-result p1

    invoke-virtual {p2, p3, p5, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    return-void
.end method
