.class public final synthetic Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

.field public final synthetic f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/fingerprint/UdfpsHbmController;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmController$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    invoke-static {v0, p0}, Lcom/google/android/systemui/fingerprint/UdfpsHbmController;->$r8$lambda$WuE6xa5RmaSUzGpKx5tRwbEnFzw(Lcom/google/android/systemui/fingerprint/UdfpsHbmController;Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;)V

    return-void
.end method
