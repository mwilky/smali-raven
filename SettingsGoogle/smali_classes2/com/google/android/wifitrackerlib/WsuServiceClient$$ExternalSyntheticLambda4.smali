.class public final synthetic Lcom/google/android/wifitrackerlib/WsuServiceClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

.field public final synthetic f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/NetworkGroupSubscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$$ExternalSyntheticLambda4;->f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/wifitrackerlib/WsuServiceClient;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuServiceClient$$ExternalSyntheticLambda4;->f$1:Lcom/android/wsuinterface/NetworkGroupSubscription;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/android/wifitrackerlib/WsuServiceClient;->$r8$lambda$N2orDgEYbF3Fwspc8fkymRpiBDY(Lcom/google/android/wifitrackerlib/WsuServiceClient;Lcom/android/wsuinterface/NetworkGroupSubscription;Ljava/lang/String;)Lcom/google/android/wifitrackerlib/WsuProvider;

    move-result-object p0

    return-object p0
.end method
