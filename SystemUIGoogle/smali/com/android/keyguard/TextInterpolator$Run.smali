.class final Lcom/android/keyguard/TextInterpolator$Run;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/TextInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Run"
.end annotation


# instance fields
.field private final baseX:[F

.field private final baseY:[F

.field private final fontRuns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$FontRun;",
            ">;"
        }
    .end annotation
.end field

.field private final glyphIds:[I

.field private final targetX:[F

.field private final targetY:[F


# direct methods
.method public constructor <init>([I[F[F[F[FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[F[F[F[F",
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$FontRun;",
            ">;)V"
        }
    .end annotation

    const-string v0, "glyphIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseX"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseY"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetX"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetY"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontRuns"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    iput-object p2, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    iput-object p3, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseY:[F

    iput-object p4, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    iput-object p5, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    iput-object p6, p0, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBaseX()[F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    return-object p0
.end method

.method public final getBaseY()[F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseY:[F

    return-object p0
.end method

.method public final getFontRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$FontRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    return-object p0
.end method

.method public final getGlyphIds()[I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    return-object p0
.end method

.method public final getTargetX()[F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    return-object p0
.end method

.method public final getTargetY()[F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    return-object p0
.end method
