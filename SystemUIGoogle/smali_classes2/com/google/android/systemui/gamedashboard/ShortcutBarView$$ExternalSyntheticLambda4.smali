.class public final synthetic Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field public final synthetic f$1:Lcom/android/internal/util/ScreenshotHelper;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$4:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$4:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;->f$4:Landroid/os/Handler;

    move-object v5, p1

    check-cast v5, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-static/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->$r8$lambda$NS9vkODaCwhEYbtFddi49e-M1po(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method
