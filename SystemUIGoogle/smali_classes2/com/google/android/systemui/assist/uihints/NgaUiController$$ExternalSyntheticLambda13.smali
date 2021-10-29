.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/OvershootInterpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda13;->f$0:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda13;->f$0:Landroid/view/animation/OvershootInterpolator;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->$r8$lambda$hmasSe9HfPg0eFrQuFJc1UMeYmY(Landroid/view/animation/OvershootInterpolator;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
