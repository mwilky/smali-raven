.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/server/ExplicitHealthCheckController;->$r8$lambda$K3YCmiu9hM6q_LNBeGn-jHHMn_4(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
