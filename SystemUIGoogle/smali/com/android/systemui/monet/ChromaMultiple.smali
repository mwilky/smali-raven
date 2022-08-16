.class public final Lcom/android/systemui/monet/ChromaMultiple;
.super Ljava/lang/Object;
.source "ColorScheme.kt"

# interfaces
.implements Lcom/android/systemui/monet/Chroma;


# instance fields
.field public final multiple:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/monet/ChromaMultiple;->multiple:D

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p1

    float-to-double v0, p1

    iget-wide p0, p0, Lcom/android/systemui/monet/ChromaMultiple;->multiple:D

    mul-double/2addr v0, p0

    return-wide v0
.end method
