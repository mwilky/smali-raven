.class public final synthetic Lcom/google/android/systemui/assist/uihints/KeyboardMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
