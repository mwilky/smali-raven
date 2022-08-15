.class public final synthetic Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->$r8$lambda$Kcg4f0baD8658a29tuG29Pg05l0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
