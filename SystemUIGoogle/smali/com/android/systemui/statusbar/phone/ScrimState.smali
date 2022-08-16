.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field public mAnimateChange:Z

.field public mAnimationDuration:J

.field public mAodFrontScrimAlpha:F

.field public mBehindAlpha:F

.field public mBehindTint:I

.field public mBlankScreen:Z

.field public mClipQsScrim:Z

.field public mDefaultScrimAlpha:F

.field public mDisplayRequiresBlanking:Z

.field public mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mFrontAlpha:F

.field public mFrontTint:I

.field public mHasBackdrop:Z

.field public mKeyguardFadingAway:Z

.field public mKeyguardFadingAwayDuration:J

.field public mLaunchingAffordanceWithPreview:Z

.field public mNotifAlpha:F

.field public mNotifTint:I

.field public mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public mScrimBehindAlphaKeyguard:F

.field public mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field public mWakeLockScreenSensorActive:Z

.field public mWallpaperSupportsAmbientMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>()V

    sput-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>()V

    sput-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>()V

    sput-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>()V

    sput-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v7, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>()V

    sput-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v8, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>()V

    sput-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v9, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    invoke-direct {v9}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>()V

    sput-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v10, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    invoke-direct {v10}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>()V

    sput-object v10, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimState$10;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/phone/ScrimState$10;-><init>()V

    sput-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v12, Lcom/android/systemui/statusbar/phone/ScrimState$11;

    invoke-direct {v12}, Lcom/android/systemui/statusbar/phone/ScrimState$11;-><init>()V

    sput-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v13, Lcom/android/systemui/statusbar/phone/ScrimState$12;

    invoke-direct {v13}, Lcom/android/systemui/statusbar/phone/ScrimState$12;-><init>()V

    sput-object v13, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v0, v14, v1

    const/4 v0, 0x1

    aput-object v2, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v4, v14, v0

    const/4 v0, 0x4

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v7, v14, v0

    const/4 v0, 0x7

    aput-object v8, v14, v0

    const/16 v0, 0x8

    aput-object v9, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v11, v14, v0

    const/16 v0, 0xb

    aput-object v12, v14, v0

    const/16 v0, 0xc

    aput-object v13, v14, v0

    sput-object v14, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const-wide/16 v0, 0xdc

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method public getBehindTint()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    return p0
.end method

.method public getMaxLightRevealScrimAlpha()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public isLowPowerState()Z
    .locals 0

    instance-of p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    return-void
.end method

.method public final updateScrimColor(Lcom/android/systemui/scrim/ScrimView;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, p0, :cond_1

    const-string p0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p0, "back_scrim_tint"

    :goto_1
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {v2, v3, p0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/scrim/ScrimView;I)V

    invoke-virtual {p1, p0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    return-void
.end method
