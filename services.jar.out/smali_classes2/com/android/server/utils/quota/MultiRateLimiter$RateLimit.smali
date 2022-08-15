.class public Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;
.super Ljava/lang/Object;
.source "MultiRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/MultiRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RateLimit"
.end annotation


# instance fields
.field public final mLimit:I

.field public final mWindowSize:Ljava/time/Duration;


# direct methods
.method public constructor <init>(ILjava/time/Duration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mLimit:I

    iput-object p2, p0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;->mWindowSize:Ljava/time/Duration;

    return-void
.end method

.method public static create(ILjava/time/Duration;)Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;
    .locals 1

    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;

    invoke-direct {v0, p0, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$RateLimit;-><init>(ILjava/time/Duration;)V

    return-object v0
.end method
