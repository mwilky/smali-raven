.class public final synthetic Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/EventStore;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/EventStore;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventStore;

    iput p2, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventStore;

    iget v1, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/people/data/EventStore$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/people/data/EventStore;->$r8$lambda$hIr_vqLjIPHbScqy2vjg16Ts_G4(Lcom/android/server/people/data/EventStore;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    return-object p0
.end method
