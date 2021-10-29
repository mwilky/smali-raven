.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

.field public final synthetic f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowView;Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->$r8$lambda$5m90GCvBsxectjDnv7-V3tvtDC0(Lcom/google/android/systemui/assist/uihints/GlowView;Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;Landroid/widget/ImageView;)V

    return-void
.end method
