.class public final Lcom/android/keyguard/TextInterpolator$Run;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/TextInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Run"
.end annotation


# instance fields
.field public final baseX:[F

.field public final baseY:[F

.field public final fontRuns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$FontRun;",
            ">;"
        }
    .end annotation
.end field

.field public final glyphIds:[I

.field public final targetX:[F

.field public final targetY:[F


# direct methods
.method public constructor <init>([I[F[F[F[FLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    iput-object p2, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    iput-object p3, p0, Lcom/android/keyguard/TextInterpolator$Run;->baseY:[F

    iput-object p4, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    iput-object p5, p0, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    iput-object p6, p0, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    return-void
.end method
