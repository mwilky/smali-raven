.class public final Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "SystemKeyPress.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/SystemKeyPress;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/CommandQueue;JLjava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SystemKeyPress;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSystemKey(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->access$getBlockingKeys$p(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SystemKeyPress$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;->access$getGateDuration$p(Lcom/google/android/systemui/columbus/gates/SystemKeyPress;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/columbus/gates/TransientGate;->blockForMillis(J)V

    :cond_0
    return-void
.end method
