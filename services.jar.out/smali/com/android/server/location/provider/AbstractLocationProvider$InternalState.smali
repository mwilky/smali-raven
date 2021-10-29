.class Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/AbstractLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalState"
.end annotation


# instance fields
.field public final listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

.field public final state:Lcom/android/server/location/provider/AbstractLocationProvider$State;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method


# virtual methods
.method withListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method withState(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p1, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    iget-object v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-object v0
.end method

.method withState(Ljava/util/function/UnaryOperator;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/server/location/provider/AbstractLocationProvider$State;",
            ">;)",
            "Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->withState(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method
