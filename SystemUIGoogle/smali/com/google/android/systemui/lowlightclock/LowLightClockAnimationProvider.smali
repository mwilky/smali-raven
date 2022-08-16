.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;
.super Ljava/lang/Object;
.source "LowLightClockAnimationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;
    }
.end annotation


# instance fields
.field public final mAlphaAnimationInDurationMillis:J

.field public final mAlphaAnimationInStartDelayMillis:J

.field public final mAlphaAnimationOutDurationMillis:J

.field public final mAlphaAnimationOutStartDelayMillis:J

.field public final mYTranslationAnimationInDurationMillis:J

.field public final mYTranslationAnimationInStartOffset:I

.field public final mYTranslationAnimationOutDurationMillis:J

.field public final mYTranslationAnimationOutEndOffset:I


# direct methods
.method public constructor <init>(IJJJIJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInStartOffset:I

    iput-wide p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInDurationMillis:J

    iput-wide p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInStartDelayMillis:J

    iput-wide p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInDurationMillis:J

    iput p8, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationOutEndOffset:I

    iput-wide p9, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationOutDurationMillis:J

    iput-wide p11, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationOutStartDelayMillis:J

    iput-wide p13, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationOutDurationMillis:J

    return-void
.end method
