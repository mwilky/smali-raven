.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:J

.field public final synthetic f$2:[J

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/am/ProcessProfileRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;J[JJLcom/android/server/am/ProcessProfileRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:J

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:[J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$3:J

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/am/ProcessProfileRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:J

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:[J

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$3:J

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$4:Lcom/android/server/am/ProcessProfileRecord;

    move-object v7, p1

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$OXl8LFlQF7fxJiNtiJM2AJp_WH0(Lcom/android/server/am/ProcessRecord;J[JJLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
