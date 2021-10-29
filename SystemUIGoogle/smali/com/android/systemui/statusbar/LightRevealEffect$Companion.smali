.class public final Lcom/android/systemui/statusbar/LightRevealEffect$Companion;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LightRevealEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->$$INSTANCE:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPercentPastThreshold(FF)F
    .locals 0

    sub-float/2addr p1, p2

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    div-float/2addr p1, p2

    mul-float/2addr p0, p1

    return p0
.end method
