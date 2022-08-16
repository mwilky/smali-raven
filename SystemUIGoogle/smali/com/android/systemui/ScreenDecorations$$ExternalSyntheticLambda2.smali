.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/CoreStartable;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/CoreStartable;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/CoreStartable;

    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/CoreStartable;

    check-cast v0, Lcom/android/systemui/ScreenDecorations;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "sysui_rounded_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v3, v2, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object p0, v2, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    :goto_0
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Integer;

    const v1, 0x7f0b056c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const v1, 0x7f0b056d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p0, v3

    const/4 v1, 0x2

    const v3, 0x7f0b056a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    const/4 v1, 0x3

    const v3, 0x7f0b056b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    iget v6, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v7, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/android/systemui/decor/OverlayWindow;->onReloadResAndMeasure([Ljava/lang/Integer;IILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerExistAndSize()V

    :cond_5
    :goto_3
    return-void

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/CoreStartable;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    sget-object v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
