.class Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;
.super Ljava/lang/Object;
.source "FlingVelocityWrapper.java"


# instance fields
.field private mGuarded:Z

.field private mVelocity:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    return-void
.end method


# virtual methods
.method consumeVelocity()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method getVelocity()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    return p0
.end method

.method setVelocity(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mVelocity:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->mGuarded:Z

    return-void
.end method
