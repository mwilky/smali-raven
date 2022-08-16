.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;
.super Landroid/util/FloatProperty;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    const-string/jumbo v0, "pathChangeProgress"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "object"
        }
    .end annotation

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;

    iget p0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    check-cast p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;

    iput p2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
