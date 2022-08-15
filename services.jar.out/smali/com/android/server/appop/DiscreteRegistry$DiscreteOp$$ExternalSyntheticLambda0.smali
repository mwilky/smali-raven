.class public final synthetic Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    check-cast p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-static {p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->$r8$lambda$VYbETqW-WT_cFnhptZZQXxd7GD8(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I

    move-result p0

    return p0
.end method
