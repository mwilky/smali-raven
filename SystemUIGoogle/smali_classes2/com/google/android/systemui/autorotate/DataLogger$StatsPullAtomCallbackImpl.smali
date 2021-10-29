.class Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "DataLogger.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/DataLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/autorotate/DataLogger;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/autorotate/DataLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;->this$0:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x2771

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;->this$0:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-static {p0, p2}, Lcom/google/android/systemui/autorotate/DataLogger;->access$000(Lcom/google/android/systemui/autorotate/DataLogger;Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
