.class public final synthetic Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/server/people/data/EventIndex;->$r8$lambda$i3NyDYgz20fi26r3acGyjk-ocyM(J)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method
