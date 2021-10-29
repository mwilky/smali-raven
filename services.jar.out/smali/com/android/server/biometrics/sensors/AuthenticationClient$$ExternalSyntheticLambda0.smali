.class public final synthetic Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    return-void
.end method


# virtual methods
.method public final sendHapticFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateError()V

    return-void
.end method
