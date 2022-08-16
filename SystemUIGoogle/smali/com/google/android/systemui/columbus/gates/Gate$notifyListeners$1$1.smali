.class public final Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;
.super Ljava/lang/Object;
.source "Gate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/google/android/systemui/columbus/gates/Gate$Listener;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/Gate;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/Gate$Listener;Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;->$it:Lcom/google/android/systemui/columbus/gates/Gate$Listener;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;->this$0:Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;->$it:Lcom/google/android/systemui/columbus/gates/Gate$Listener;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;->this$0:Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-interface {v0, p0}, Lcom/google/android/systemui/columbus/gates/Gate$Listener;->onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V

    return-void
.end method
