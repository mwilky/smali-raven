.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$1:Z

    iput p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$1:Z

    iget p0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda7;->f$2:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/am/AppProfiler;->$r8$lambda$bYVlbQYS7LMv9Nraxx9n7TNsbdQ(Lcom/android/server/am/AppProfiler;ZILcom/android/server/am/ProcessRecord;)V

    return-void
.end method
