.class public final Lcom/google/android/systemui/lowlightclock/BurnInProtector;
.super Ljava/lang/Object;
.source "BurnInProtector.java"


# instance fields
.field public mJitterStartTimeMillis:J

.field public final mMaxBurnInOffset:I

.field public final mTimeUntilFullJitterMillis:J

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mMaxBurnInOffset:I

    iput-wide p1, p0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mTimeUntilFullJitterMillis:J

    return-void
.end method
