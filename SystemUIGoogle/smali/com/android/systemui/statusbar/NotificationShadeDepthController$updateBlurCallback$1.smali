.class final Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationShadeDepthController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationShadeDepthController.kt\ncom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,531:1\n1819#2,2:532\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationShadeDepthController.kt\ncom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1\n*L\n220#1,2:532\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setUpdateScheduled$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlurUtils;->getMinBlurRadius()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->getMaxBlurRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$shouldApplyShadeBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeExpansion()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const v1, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getQsPanelExpansion()F

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeExpansion()F

    move-result v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getTransitionToFullShadeProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBlursDisabledForAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    move-result v0

    if-nez v0, :cond_3

    move p1, p2

    :cond_3
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRatio()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBlursDisabledForAppLaunch()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p2, 0x1

    :cond_4
    const-wide/16 v0, 0x1000

    const-string v3, "shade_blur_radius"

    invoke-static {v0, v1, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurRoot$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    :cond_6
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setLastAppliedBlur$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getWallpaperController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/util/WallpaperController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/systemui/util/WallpaperController;->setNotificationShadeZoom(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getListeners$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;->onWallpaperZoomOutChanged(F)V

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;->onBlurRadiusChanged(I)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBackgroundBlurRadius(I)V

    return-void
.end method
