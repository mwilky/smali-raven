.class public final synthetic Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->lambda$registerAuthenticators$0$IrisService$IrisServiceWrapper(Ljava/util/List;)V

    return-void
.end method
