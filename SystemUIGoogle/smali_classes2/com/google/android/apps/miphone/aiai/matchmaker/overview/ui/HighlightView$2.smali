.class Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;
.super Landroid/util/FloatProperty;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->access$100(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
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

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;->get(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->access$000(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;->setValue(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;F)V

    return-void
.end method
