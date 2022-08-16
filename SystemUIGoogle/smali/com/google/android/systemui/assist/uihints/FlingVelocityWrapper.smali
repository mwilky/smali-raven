.class public final Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;
.super Ljava/lang/Object;
.source "FlingVelocityWrapper.java"


# instance fields
.field public mGuarded:Z

.field public mVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    return-void
.end method
