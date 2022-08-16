.class public final synthetic Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1$$ExternalSyntheticLambda0;->f$1:F

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider$1;->this$0:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mMuted:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mCardVisible:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->mColorMode:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->onLightnessUpdate(F)V

    :cond_1
    :goto_0
    return-void
.end method
