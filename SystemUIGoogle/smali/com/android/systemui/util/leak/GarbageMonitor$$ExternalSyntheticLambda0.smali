.class public final synthetic Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    return-void
.end method


# virtual methods
.method public final onMessage()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
