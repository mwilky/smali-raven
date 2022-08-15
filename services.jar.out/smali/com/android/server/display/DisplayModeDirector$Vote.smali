.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vote"
.end annotation


# instance fields
.field public final baseModeRefreshRate:F

.field public final disableRefreshRateSwitching:Z

.field public final height:I

.field public final refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

.field public final width:I


# direct methods
.method public constructor <init>(IIFFZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    new-instance p1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {p1, p3, p4}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iput-boolean p5, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    iput p6, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    return-void
.end method

.method public static forBaseModeRefreshRate(F)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 8

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    move-object v0, v7

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 8

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 8

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v7

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 8

    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "PRIORITY_UDFPS"

    return-object p0

    :pswitch_1
    const-string p0, "PRIORITY_PROXIMITY"

    return-object p0

    :pswitch_2
    const-string p0, "PRIORITY_SKIN_TEMPERATURE"

    return-object p0

    :pswitch_3
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    return-object p0

    :pswitch_4
    const-string p0, "PRIORITY_LOW_POWER_MODE"

    return-object p0

    :pswitch_5
    const-string p0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object p0

    :pswitch_6
    const-string p0, "PRIORITY_APP_REQUEST_SIZE"

    return-object p0

    :pswitch_7
    const-string p0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    return-object p0

    :pswitch_8
    const-string p0, "PRIORITY_APP_REQUEST_REFRESH_RATE_RANGE"

    return-object p0

    :pswitch_9
    const-string p0, "PRIORITY_USER_SETTING_MIN_REFRESH_RATE"

    return-object p0

    :pswitch_a
    const-string p0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    return-object p0

    :pswitch_b
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE"

    return-object p0

    :pswitch_c
    const-string p0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", baseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
