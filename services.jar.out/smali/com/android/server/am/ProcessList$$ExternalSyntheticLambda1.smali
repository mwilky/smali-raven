.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessList;

    iput-wide p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessList;

    iget-wide v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/ProcessList;->$r8$lambda$HTKYW1oYWbA5nRBREe58yytwlAQ(Lcom/android/server/am/ProcessList;JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
