.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/UnaryOperator;

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->$r8$lambda$MQ694tDjSl6yFnSNHY1YjmYncNg(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object p0

    return-object p0
.end method
