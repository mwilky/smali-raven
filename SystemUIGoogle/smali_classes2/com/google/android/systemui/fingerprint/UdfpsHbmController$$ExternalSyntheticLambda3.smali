.class public final synthetic Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

.field public final synthetic f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->$r8$lambda$NeFQIiGmFkY-PHIVFOm0wmRSAzA(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;Ljava/lang/Runnable;)V

    return-void
.end method
