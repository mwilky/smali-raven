.class public final synthetic Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;->f$0:J

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->$r8$lambda$kpTTC06QAMxHJkyob9iBOOpDO_I(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p0

    return p0
.end method
