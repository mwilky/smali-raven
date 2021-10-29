.class public final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;
.super Ljava/lang/Object;
.source "FaceAuthScreenBrightnessController.kt"


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:J

.field private static final DEFAULT_USE_FACE_WALLPAPER:Z

.field private static final MAX_SCREEN_BRIGHTNESS:I

.field private static final MAX_SCRIM_OPACTY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->DEFAULT_ANIMATION_DURATION:J

    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->MAX_SCREEN_BRIGHTNESS:I

    const/16 v0, 0x32

    sput v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->MAX_SCRIM_OPACTY:I

    return-void
.end method

.method public static final getDEFAULT_ANIMATION_DURATION()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->DEFAULT_ANIMATION_DURATION:J

    return-wide v0
.end method

.method public static final getDEFAULT_USE_FACE_WALLPAPER()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->DEFAULT_USE_FACE_WALLPAPER:Z

    return v0
.end method

.method public static final getMAX_SCREEN_BRIGHTNESS()I
    .locals 1

    sget v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->MAX_SCREEN_BRIGHTNESS:I

    return v0
.end method

.method public static final getMAX_SCRIM_OPACTY()I
    .locals 1

    sget v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->MAX_SCRIM_OPACTY:I

    return v0
.end method
