.class public final synthetic Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

.field public final synthetic f$1:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;->f$1:Ldagger/Lazy;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->$r8$lambda$KSjMBoMWybN3DYw34GUJyiX_Og4(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V

    return-void
.end method
